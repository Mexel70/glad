project "glad"
	kind "StaticLib"
    language "C"

	targetname ("%{wks.name}-%{prj.name}")
	targetprefix ("")

	targetdir (BinaryOutputDirectory)
	objdir (IntermediateOutputDirectory)

    includedirs {
        "include"
    }

	files {
        "premake5.lua",
        
        "include/**.h",
        "src/**.c"
    }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
		systemversion "latest"
		
	filter "system:macos"
		systemversion "latest"


	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
	
	filter "configurations:Distribution"
		runtime "Release"
		optimize "On"
		inlining "Auto"