Describe "Test for 15_kentucky_friar" {
    BeforeAll {
        $Script:prg = ".\friar.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test two syllable 'ing' words" {
        $tests = @(
            , ("cooking", "cookin'")
            , ("Fishing", "Fishin'")
        )

        foreach ($test in $tests) {
            $actual = &$Script:prg $test[0]
            $actual | Should -BeExactly $test[1]
        }
    }

    It "Test one syllable 'ing' words" {
        $tests = @(
            , ("sing", "sing")
            , ("Fling", "Fling")
        )

        foreach ($test in $tests) {
            $actual = &$Script:prg $test[0]
            $actual | Should -BeExactly $test[1]
        }
    }

    It "test_you_yall" {
        $tests = @(
            , ("you", "y'all")
            , ("You", "Y'all")
        )
        
        foreach ($test in $tests) {
            $actual = &$Script:prg $test[0]
            $actual | Should -BeExactly $test[1]
        }
    }
}