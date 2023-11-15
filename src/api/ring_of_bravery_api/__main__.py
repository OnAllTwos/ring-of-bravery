from ring_of_bravery_api.interfaces.synergy_database import SynergyDatabase

if __name__ == "__main__":
    # Start up the FastAPI server via uvicorn
    database = SynergyDatabase("mysql://root:password@db:3306/synergies")
    database.test()
    pass