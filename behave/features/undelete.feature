Feature: `osc undelete` command


# common steps for all scenarios
Background:
   Given I set working directory to "{context.osc.temp}"


@destructive
Scenario: Run `osc undelete <project>/<package>`
   Given I execute osc with args "rdelete test:factory/test-pkgA -m 'why:delete'"
    When I execute osc with args "undelete test:factory/test-pkgA -m 'why:undelete'"
    Then the exit code is 0


@destructive
Scenario: Run `osc undelete <project>`
   Given I execute osc with args "rdelete test:factory --recursive -m 'why:delete'"
    When I execute osc with args "undelete test:factory -m 'why:undelete'"
    Then the exit code is 0
