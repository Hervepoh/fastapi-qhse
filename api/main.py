from fastapi import  FastAPI, Depends, HTTPException , status
from sqlalchemy.orm import Session

from typing import List 
import crud
import models
import schemas
from database import SessionLocal, engine
from datetime import datetime


models.Base.metadata.create_all(bind=engine)

app = FastAPI()

# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/articles/{id}")
def get_article(id:int, db: Session = Depends(get_db)):
    # article = db.query(models.Article).filter(models.Article.id==id).first()
    article = db.query(models.Article).get(id)
    if article:
        return article
    raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Ressource not found")


@app.get("/articles/", response_model=List[schemas.Article])
def get_articles(db: Session = Depends(get_db)):
    return db.query(models.Article).all()


@app.post("/articles/",response_model=schemas.Article,status_code=status.HTTP_201_CREATED)
def add_article(article: schemas.ArticleBase, db: Session = Depends(get_db)):
    new_article = models.Article(title=article.title, description=article.description)
    db.add(new_article)
    db.commit()
    db.refresh(new_article)
    return new_article


@app.put("/articles/{id}",status_code=status.HTTP_202_ACCEPTED)
def update_article(id:int, article: schemas.ArticleBase, db: Session = Depends(get_db)):
    db.query(models.Article).filter(models.Article.id == id).update({'title':article.title, 'description':article.description})
    db.commit()
    return {'message':'Data is updated'}


@app.delete("/articles/{id}",status_code=status.HTTP_204_NO_CONTENT)
def delete_article(id:int, db: Session = Depends(get_db)):
    db.query(models.Article).filter(models.Article.id == id).delete(synchronize_session=False)
    db.commit()
    return {'message':'Data is deleted'}
 
# @app.post("/users/", response_model=schemas.User)
# def create_user(user: schemas.UserCreate, db: Session = Depends(get_db)):
#     db_user = crud.get_user_by_email(db, email=user.email)
#     if db_user:
#         raise HTTPException(status_code=400, detail="Email already registered")
#     return crud.create_user(db=db, user=user)
