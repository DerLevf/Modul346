1. Was ist Git?
Git ist ein Versionskontrollsystem, mit dem Entwickler und andere, die an Projekten arbeiten, Änderungen an Dateien im Laufe der Zeit verfolgen können [1-3]. Es ermöglicht, zu früheren Versionen zurückzukehren, neue Ideen auszuprobieren, ohne die Originaldateien zu verändern, und die Zusammenarbeit in Teams zu erleichtern [1, 2, 4].

2. Welche Vorteile bringt die Verwendung von einem Versionenverwaltungssystem wie Git?
Verfolgen von Änderungen: Git protokolliert jede Änderung an jeder Datei, sodass du jederzeit sehen kannst, wer was wann geändert hat [1, 6].
Zurückkehren zu früheren Versionen: Du kannst jederzeit zu einer früheren Version deines Projekts zurückkehren, falls du einen Fehler gemacht hast oder einfach nur sehen möchtest, wie etwas früher aussah [1].
Zusammenarbeit: Git erleichtert die Zusammenarbeit in Teams, da jeder Entwickler seine eigene Kopie des Projekts hat und Änderungen einfach zusammengeführt werden können [1, 4].
Branches: Mit Git kannst du Branches erstellen, um verschiedene Versionen deines Projekts gleichzeitig zu entwickeln, ohne die Hauptversion zu beeinflussen [7].
Kostenlose Hosting-Plattformen: Es gibt kostenlose Plattformen wie GitHub, GitLab und BitBucket, auf denen du deine Git-Repositories hosten kannst [1, 8, 9].

3. Wieso kann es sinnvoll sein, nicht alle vorhandenen Veränderungen auf einmal einzuchecken?
- Übersichtlichkeit und Nachvollziehbarkeit: Indem du deine Änderungen in kleinere, logische Einheiten aufteilst, wird dein Projektverlauf übersichtlicher und leichter nachvollziehbar. Jeder Commit sollte eine einzige, abgeschlossene Änderung darstellen. So können du und deine Teammitglieder später leichter verstehen, warum eine bestimmte Änderung vorgenommen wurde und welche Auswirkungen sie hatte.
- Fehlerbehebung: Wenn du viele Änderungen auf einmal eincheckst und später ein Problem auftritt, ist es schwieriger, die fehlerhafte Änderung zu identifizieren. Kleinere Commits ermöglichen es dir, gezielt einzelne Änderungen zurückzusetzen oder zu überprüfen, ohne das gesamte Projekt zu beeinflussen.
- Zusammenarbeit in Teams: Wenn du in einem Team arbeitest, ist es wichtig, dass deine Commits übersichtlich und gut strukturiert sind. Dies erleichtert das Zusammenführen von Änderungen aus verschiedenen Branches und reduziert das Risiko von Konflikten.
- Flexibilität: Durch das schrittweise Einchecken von Änderungen kannst du flexibler auf neue Anforderungen oder Probleme reagieren. Du kannst beispielsweise einen Teil deiner Arbeit einchecken, während du an einem anderen Teil noch weiterarbeitest.
- Bessere Code-Reviews: Kleinere Commits machen es für deine Teammitglieder einfacher, deine Änderungen zu überprüfen. Sie können sich auf einzelne Aspekte des Codes konzentrieren und gezielteres Feedback geben.

4. Wieso sind viele kleine Commits besser als ein riesiger Commit?
Die Verwendung vieler kleiner Commits in Git bietet gegenüber einem einzelnen, riesigen Commit mehrere Vorteile. Diese Vorteile lassen sich in drei Hauptkategorien einteilen: Verbesserte Übersichtlichkeit und Nachvollziehbarkeit, effektivere Fehlerbehebung und optimierte Zusammenarbeit im Team.

1. Übersichtlichkeit und Nachvollziehbarkeit:
- Kleine Commits machen den Projektverlauf übersichtlicher, da jede Änderung in einer separaten, nachvollziehbaren Einheit festgehalten wird.
- Dies erleichtert es dir und deinen Teammitgliedern, den Verlauf des Projekts zu verstehen und die Auswirkungen einzelner Änderungen nachzuvollziehen.
- Ein riesiger Commit hingegen enthält viele verschiedene Änderungen, die nur schwer zu trennen und zu verstehen sind.
- Dies macht es schwierig, den Code zu überprüfen, Fehler zu finden und den Code zu verstehen.
- Die Verwendung aussagekräftiger Commit-Nachrichten, die den Zweck der Änderung klar beschreiben, erhöht die Nachvollziehbarkeit zusätzlich.

2. Effektivere Fehlerbehebung:
- Kleinere Commits vereinfachen die Fehlerbehebung erheblich.
- Wenn ein Fehler auftritt, kannst du durch die kleinen Commits den Projektverlauf Schritt für Schritt zurückverfolgen und den fehlerhaften Commit leichter identifizieren.
- Anschließend kannst du diesen Commit gezielt zurücksetzen, ohne andere Teile des Projekts zu beeinflussen.
- Bei einem großen Commit ist es hingegen oft unmöglich, die genaue Ursache eines Fehlers zu finden, da viele verschiedene Änderungen miteinander vermischt sind.

3. Optimierte Zusammenarbeit im Team:
- Kleine Commits sind besonders in der Teamarbeit von Vorteil.
- Teammitglieder können ihre Änderungen häufiger und in kleineren Schritten mit dem Haupt-Branch zusammenführen, wodurch Konflikte minimiert werden.
- Die übersichtlichen Commits erleichtern es den Teammitgliedern, den Code der anderen zu verstehen, zu überprüfen und zu integrieren.
- Ein großer Commit hingegen erhöht das Risiko von Merge-Konflikten und macht die Zusammenarbeit im Team unnötig komplex.

5. Wann und wie oft sollte man seine Änderungen einchecken?
Die Quellen geben zwar keine konkreten Zeitvorgaben, aber sie betonen die Vorteile von häufigen, kleinen Commits.
Hier sind einige Faustregeln, die aus den Quellen und unserem Gespräch abgeleitet werden können:
- Ein Commit pro abgeschlossener Änderung: Checke deine Änderungen ein, sobald du eine logische Einheit abgeschlossen hast - z. B. eine Fehlerbehebung, eine neue Funktion oder eine Code-Optimierung.
- Lieber zu oft als zu selten: Es ist besser, zu viele kleine Commits zu erstellen als einen riesigen Commit mit vielen verschiedenen Änderungen.
- Vor dem Wechsel des Arbeitskontextes: Checke deine Änderungen ein, bevor du zu einer anderen Aufgabe wechselst oder deinen Arbeitsplatz verlässt. So stellst du sicher, dass deine Arbeit gesichert ist und du später leichter wieder einsteigen kannst.
- Vor dem Mergen oder Pushen: Bevor du deine Änderungen mit anderen Branches zusammenführst oder in ein Remote-Repository pushst, solltest du sicherstellen, dass alle deine lokalen Änderungen eingecheckt sind.
- Nach dem Beheben von Konflikten: Wenn du Konflikte beim Mergen von Branches gelöst hast, solltest du die Änderungen einchecken, um den aktuellen Stand des Projekts zu sichern.
Gründe für häufige Commits:
- Übersichtlichkeit und Nachvollziehbarkeit: Kleinere Commits machen den Projektverlauf übersichtlicher und leichter nachvollziehbar.
- Fehlerbehebung: Kleinere Commits erleichtern die Identifizierung und Behebung von Fehlern.
- Zusammenarbeit in Teams: Häufige Commits erleichtern die Zusammenarbeit in Teams, indem sie Konflikte minimieren und die Integration von Änderungen vereinfachen.
- Bessere Code Reviews: Kleinere Commits machen es einfacher, Code zu überprüfen und Feedback zu geben.
