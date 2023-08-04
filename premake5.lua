project "soloud"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"

	targetdir ("bin/%{cfg.buildcfg}/%{prj.name}")
    objdir ("bin/build/%{prj.name}")

	includedirs { "include/" }

	files 
    {
        "include/**.h",
        "src/core/**.cpp",

		"src/filter/soloud_echofilter.cpp",

        "src/backend/alsa/**.cpp",

        "src/audiosource/speech/**.h",
        "src/audiosource/speech/**.cpp",

        "src/audiosource/openmpt/**.c",
        "src/audiosource/openmpt/**.cpp",

        "src/audiosource/wav/**.h",
        "src/audiosource/wav/**.c",
        "src/audiosource/wav/**.cpp"
    }

	filter "system:linux"
		pic "On"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:release"
		runtime "Release"
		optimize "On"
