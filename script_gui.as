namespace Kellymerc
{
	[Hook]
	void GameModeConstructor(Campaign@ campaign)
	{
		auto wsOpenInterface = WorldScript::OpenInterface();
			wsOpenInterface.Filename = "gui/main_menu/character_selection.gui";
			wsOpenInterface.Class = "KellyCharacterSelect";
			wsOpenInterface.MakeRoot = true;
			wsOpenInterface.Start(false);
	}
}

