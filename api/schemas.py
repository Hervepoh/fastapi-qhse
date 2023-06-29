from typing import List, Union, Optional

from pydantic import BaseModel

class ArticleBase(BaseModel):
    title: str
    description: str
    
class Article(ArticleBase):
    id: int
    class Config:
        orm_mode = True
    
    
# class ItemBase(BaseModel):
#     title: str
#     description: Union[str, None] = None


# class ItemCreate(ItemBase):
#     pass


# class Item(ItemBase):
#     id: int
#     owner_id: int

#     class Config:
#         orm_mode = True


# class UserBase(BaseModel):
#     email: str


# class UserCreate(UserBase):
#     password: str


# class User(UserBase):
#     id: int
#     is_active: bool
#     items: List[Item] = []

#     class Config:
#         orm_mode = True