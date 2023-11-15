from sqlmodel import SQLModel, Field
from typing import Optional

class Augments(SQLModel):
    id: Optional[int] = Field(default=None, primary_key=True)
    name: str

class Champion(SQLModel):
    id: int
    name: str

class Playstyle(SQLModel):
    id: int
    name: int

class Item(SQLModel):
    id: int
    name: int

class ItemPlaystyleMapping(SQLModel):
    id: int
    item_id: int
    playstyle_id: int
    weight: int

class AugmentPlaystyleMapping(SQLModel):
    id: int
    augment_id: int
    playstyle_id: int
    weight: int

class ChampionPlaystyleMapping(SQLModel):
    id: int
    champion_id: int
    playstyle_id: int
    weight: int
