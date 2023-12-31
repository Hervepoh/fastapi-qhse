from sqlalchemy import Boolean, Column, ForeignKey, Integer, String , Date , Time
from sqlalchemy.orm import relationship

from  database import Base

class Article(Base):
    __tablename__ = "articles"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(100))
    description = Column(String(400))



# class Action(Base):
#     __tablename__ = "action"

#     Action_ID = Column(Integer, primary_key=True)
#     Title = Column(String(255))
#     Description = Column(String)
#     Date_created = Column(Date)
#     TimeCreated = Column(Time) 
#     ActionType = Column(String)
#     Status = Column(String)
#     Incident_ID = Column(String)
#     Wsv_ID = Column(String)
#     Date_deleted = Column(Date)

#     items = relationship("Item", back_populates="owner")
    
# class User(Base):
#     __tablename__ = "users"

#     id = Column(Integer, primary_key=True, index=True)
#     email = Column(String, unique=True, index=True)
#     hashed_password = Column(String)
#     is_active = Column(Boolean, default=True)

#     items = relationship("Item", back_populates="owner")


# class Item(Base):
#     __tablename__ = "items"

#     id = Column(Integer, primary_key=True, index=True)
#     title = Column(String, index=True)
#     description = Column(String, index=True)
#     owner_id = Column(Integer, ForeignKey("users.id"))

#     owner = relationship("User", back_populates="items")