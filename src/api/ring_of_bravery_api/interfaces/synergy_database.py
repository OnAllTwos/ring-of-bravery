# TODO: Create a nice interface for grabbing stuff from the database here. Use SQLModel.
from ring_of_bravery_api.types.data_types import Augments
from sqlmodel import create_engine, Session

class SynergyDatabase:

    def __init__(self, base_url: str) -> None:
        self.base_url = base_url
        self.engine = create_engine(base_url, echo=True)
        self.engine.connect()
    
    def test(self) -> None:
        with Session(self.engine) as session:
            test = Augments(name="test")
            session.add(test)
            session.commit()
