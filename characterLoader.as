namespace Kellymerc
{
	[Hook]
	void GameModeConstructor(Campaign@ campaign)
	{
		PauseGame(true, true);
		auto arrCharacters = HwrSaves::GetCharacters();

		for (uint i = 0; i < arrCharacters.length(); i++)
			{
				auto svChar = arrCharacters[i];

				string name = GetParamString(UnitPtr(), svChar, "name");
				bool mercenaryLocked = GetParamBool(UnitPtr(), svChar, "mercenary-locked", false);
				print("test");
				print(name);
				if(mercenaryLocked)
				{
					HwrSaves::PickCharacter(i);
				}
			}
	}
}
