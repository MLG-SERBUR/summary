# MLG Fortress Server Resurrection

This project is basically an 8-year-old Minecraft server being dragged into the present without losing its weird little soul.

If you want the short version: the old world is not being replaced. It is being made runnable again on modern server software, one broken plugin and one mystery config at a time.

## What Has Changed

- The server has been pushed up to modern Paper/Purpur-era APIs, including `26.1.2`.
- A lot of old plugins in the `MLG-Fortress` org have been updated to compile and run again.
- Build/CI work has been modernized so updates are easier to repeat.
- Old server clutter and mystery files have been inspected instead of blindly trusted.

## What Made It Messy

- Some configs rewrite themselves in noisy ways, especially YAML ordering changes.
- The server has a lot of old custom behavior mixed into the plugin stack.
- Privacy matters: player IPs must not get committed.
- Some things look important at first glance but are just generated leftovers.

## Recent Momentum

- `2026-04-16` to `2026-04-18`: broad compatibility work for `Paper/Purpur 26.1.2`, Java 21, and CI workflow cleanup across multiple plugins.
- `2026-04-20` to `2026-04-21`: more API/build fixes landed in the org, including `MountainDewritoes`, `CreativeParkour`, `ItemNameLab`, `SimpleTrading`, and others.
- `2026-04-21`: repeated cleanup passes removed older build workflows and normalized Maven build flags across repos.
- `2026-04-22`: world-image files like `world_biome.png` and `world_temperature.png` were traced to Dynmap-style outputs, not some lost art project.

## Last Week In The Plugin Org

- `CreativeParkour`: build compatibility fixes, CI cleanup, and newer server API updates.
- `MountainDewritoes`: startup/config fixes, data-storage refactors, and cleanup around older dependencies.
- `ItemNameLab`: test plugin work, translated/custom item-name handling, and CI polish.
- `PrettySimpleShop`: Purpur `26.1.2` update plus item-name and fallback logic fixes so shop behavior works again instead of silently rotting on old assumptions.
- `Multiverse-Core`: updater workflow needed adjustment because the project now builds with Gradle instead of Maven.
- Across many repos: lots of "make this old plugin survive modern Paper again" work, plus more reliable GitHub Actions builds.

## Big Human-Visible Wins

- `PrettySimpleShop` working again is one of bigger highlights. That was not only version bump work; it needed item-name resolution and behavior fixes to get back to doing something players would actually notice.
- `MountainDewritoes` got real startup/config and player-data-storage attention, which matters because it is one of core server-specific plugins.
- `CreativeParkour` and other custom plugins moved closer to “modern server, still same old minigame vibe” instead of “old code that only half-compiles.”

## Snapshot Right Now

- The plugin-org history tells the story more clearly than the main server folder does.
- The main server worktree still has a pile of uncommitted config churn, cleanup deletes, and generated-file noise.
- That means the progress is real, but the local server repo still needs a clean pass before it tells its own story well in git.

## Where This Seems To Be Going

- Keep the server stable on modern Minecraft versions.
- Keep the custom feel intact.
- Make future updates less fragile.
- Keep secrets and player data out of git.

For deeper breakdown and visuals, see [SCOPE_AND_SCALE.md](SCOPE_AND_SCALE.md), [VISUAL_REPORT.html](VISUAL_REPORT.html), and [STORY_REPORT.html](STORY_REPORT.html).
