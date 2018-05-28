-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 10:45 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otr`
--

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `albumName` varchar(20) NOT NULL,
  `artistName` varchar(30) NOT NULL,
  `shortDescription` varchar(150) NOT NULL,
  `longDescription` varchar(3000) NOT NULL,
  `largeImage` varchar(50) NOT NULL,
  `smallImage` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `dateUploaded` date NOT NULL,
  `dateExp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`noticeId`, `userId`, `albumName`, `artistName`, `shortDescription`, `longDescription`, `largeImage`, `smallImage`, `area`, `dateUploaded`, `dateExp`) VALUES
(3, 3, 'Low', 'David Bowie', 'The album\'s first side is a beautiful futurist ruin, while the instrumental second feels like a calculated attempt to kill the author.', 'Compared to its predecessors, David Bowie\'s 11th studio album is noticeably reserved. His lyrical gifts were already spread thin, and thinner still when a completed third verse was cut from \"Always Crashing in the Same Car,\" in which Bowie did his very best Bob Dylan impression. Producer Tony Visconti thought it was so creepy, and potentially inappropriate given Dylan\'s motorcycle accident a decade earlier, that they scrapped it.\r\nLow\'s first side is a beautiful futurist ruin, littered with holes left purposefully unfixed. Visconti heightens the decay and distills the lifespan of every sound, treating Dennis Davis\' drums so that he was playing along to a withered echo of his last strike, like an explosion contained in a tin can. Even Bowie\'s voice sounds aged and distant. Eno\'s sharp electronics jostle against the bolshy funk rhythms and Carlos Alomar and Ricky Gardiner\'s guitars, giving the record a feverish euphoria that hits like too much pseudo-ephedrine and mangles linear time. Low\'s first side feels like having the carpet ripped out from under you by three wizards who have plans to fly it elsewhere.\r\nAll this playfulness means that Low\'s reputation for utter desolation doesn\'t feel quite right. Bowie is, of course, obsessed with barriers to connection: the sudden instinct that causes him to yelp and back away from someone on \"Breaking Glass\" (\"You\'re such a wonderful person/ But you got problems/ Oh, oh, oh, oh, I\'ll never touch ya\"), self-imposed isolation (\"Sound and Vision\") and isolation from the self (\"What are you gonna be/ To the real me,\" on \"What in the World\"), and a semi-serious plea for lifelong companionship just as his marriage was disintegrating (\"Be My Wife\"). \r\nAt the end of side 1 comes the instrumental \"A New Career in a New Town,\" which plots the distance from Bowie\'s Anglocentric career to his new Teutonic mode, bridging the former\'s refractory squelched riff and the latter\'s dreamy gauze with a searching harmonica phrase: a regular substitute for emotion that the human voice can\'t reach, but a brilliantly strange idea in this context (as well as another Dylan affectation). Here, it\'s bittersweet, nostalgic but propelled by forward motion, and a resolution to commit to a place and escape his blue room funk. The mostly instrumental second side is a tribute to the people of the Soviet Bloc —Poland on \"Warszawa,\" and East Berlin on the remaining three songs—in which the elusive nature of side 1 subsides and Bowie\'s persona is subsumed into his and Eno\'s pulsating sequences.\r\n', 'Low.jpg', 'Low.jpg', 'Rock', '2016-01-03', '0000-00-00'),
(4, 11, 'Follow the Leader', 'Korn', 'Anger is not pretty or pleasant. It can turn violent, even homicidal. But there are times when just getting mad beats getting even.', 'Korn know where that\'s at. In Follow the Leader, vocalist Jonathan Davis, bassist Reggie \"Fieldy\" Arvizu, guitarists James \"Munky\" Shaffer and Brian \"Head\" Welch, and drummer David Silveria have made an ideal record for those long, black days when all you can do is stand up and scream, \"What the fuck! What the fuck! What the fuck!\" at bloody-murder volume.\r\nIn attack and distemper, Korn have the Nineties hip-hop, amp-death aesthetic — NIN meet N.W.A; Rollins Against the Machine — down to ferocious perfection. \"Children of the Korn\" is an emergency-transmission mélange of brittle machine beats, densely packed guitar distortion and the tandem barking of Davis (\"All I want to do is live!\") and special guest Ice Cube (\"Stop fuckin\' wit\' me!\"). A smart, sharp example of Korn\'s style of modular writing, \"Seed\" is two mind games in one: big chunks of deathmarch funk and opaque stretches of echoey dub in which the guitars sound as though they\'re broadcasting from a watery grave.\r\nFollow the Leader is also true to an older, vital hard-rock tradition of cleansing brutality and transcendent guitar choler — Blue Cheer\'s 1968 speed freak\'s delight, Vincebus Eruptum; early Metallica and very early Black Sabbath; the molten heave \'n\' thump of Funkadelic\'s \"Cosmic Slop\"; the claustrophobic fury of Steve Albini\'s mid-Eighties band Big Black. It may be the fact that Shaffer and Welch both play seven-string guitars, but there is an extra, weighty abrasion to their riffing that, at full throttle, seems to cleave the music in half, pressing everything else in the mix toward the margins. Silveria\'s bona fide disco beat is the sucker bait in \"Got the Life,\" but it\'s the crisp crush of bass-and-dual-guitar menace that makes the track fat with tension. When the band abruptly switches from the cold, clipped chorus of \"It\'s On\" to the bright, Big Chord bridge, it\'s as if Korn have suddenly stepped out of their angst bunker into A-bomb-white daylight.\r\nKorn\'s only other problem is timing; they\'ve released their best album just as alternative punk-funk-metal whatever is in commercial and creative eclipse. It is easy to hear in Follow the Leader the last great roar of a once-good idea. It is also easy, from a music-biz perch, to misread and underestimate the needs and loyalties of Young Pissed-off America. Either way, Follow the Leader is going to blow up in your face. Prepare to eat shrapnel — whether you like it or not.\r\n', 'Follow.jpg', 'Follow.jpg', 'Nu-Metal', '1998-08-12', '0000-00-00'),
(5, 2, 'Spirit', 'Depeche Mode', 'Depeche Mode’s most pointedly topical album, but the synth giants still write universal, stadium-sized music. ', 'The 14th studio album from synth giants Depeche Mode begins with frontman Dave Gahan declaring that “We are not there yet/We have not evolved.” It’s the first of many admonitions Gahan issues on what turns out to be the most pointedly topical and compassionate effort in the band’s career. Over solemn piano chords and a lockstep electro groove that hints at the cadence of a protest march, Gahan laments how “we feel nothing inside” as we “track it all with satellites” and “watch men die in real time.” By track two, “Where’s the Revolution,” Gahan begins calling for out-and-out revolt, chiding the audience: “Come on people/You’re letting me down.” In his golden-throated baritone, Gahan reminds us that we’ve been “pissed on/For too long,” our “rights abused” by governments who “Manipulate and threaten/With terror as a weapon.”\nGahan delivers Gore’s state-of-world address for three songs in a row before going back to the band’s bread-and-butter obsessions. Later, though, on “Poorman”—which self-consciously references the spartan electronic gurgle of the Violator hit “Policy of Truth”—Gore and Gahan risk coming off as oblivious to the irony when they observe that “corporations get the breaks/Keeping almost everything they make” and ask, “When will it trickle down?” But Depeche Mode deliver anthems with such proficiency that sincerity barely matters. A song like “Where’s the Revolution” makes you feel like singing in response to today’s headlines. Depeche Mode still make universal, stadium-sized music that’s limber enough to fit through your bedroom doorframe, as if it had been conceived with your life in mind.\nIn some respects, though, their consistency works against them. The sixth album since the departure of multi-instrumentalist/arranger Alan Wilder, Spirit sees Depeche Mode once again shuffling through the most quintessential components of their sound. On “Cover Me,” Gore’s haunting Lanois-esque guitar twang allows you to close your eyes and picture yourself under the Northern lights Gahan sings about. But aside from “Cover Me,” Spirit lacks the ambience of Depeche Mode’s most atmospheric material. If only producer/mixer James Ford had disheveled the sounds a bit, Spirit could have better asserted its place in Depeche Mode’s body of work. For both the band and audience, that shift couldn’t have come at a better time.\n', 'Spirit.jpg', 'Spirit.jpg', 'Rock', '2018-04-02', '2018-04-03'),
(6, 2, 'Honor through Decay', 'Neurosis', 'Over the course of a 27-year career, the Oakland band has evolved from metallic punk to post-hardcore prog to majestic doom of their current phase.', '\"Our legacy can only be assured if we continually burn down the past and plant seeds in the ashes,\" proclaims Neurosis guitarist-vocalist Steve Von Till in a trailer for the band\'s latest album, Honor Found in Decay. It\'s got a nice ring to it, but might not be the best description of the veteran Oakland group\'s M.O. Sure, Neurosis\' work has evolved over the course of a 27-year career-- from the gritty metallic punk of 1987\'s Pain of Mind to the harrowing post-hardcore prog of 1993\'s Enemy of the Sun and on to the majestic art doom of their current phase-- but the progression has been gradual, a series of seasonal shifts rather than fiery upheavals. That unhurried pace has helped make the band into a redwood of the underground, a model for Mastodon, Isis, and countless other crews of metal-oriented aesthetes.\nIt\'s telling that Honor\'s two strongest tracks, opener \"We All Rage in Gold\" and closer \"Raise the Dawn\", are also the shortest. These pieces sum up how the record conveys an expansive feel while minimizing fuss. More importantly, they straight-up rock. After a quick mood-setting intro, \"We All Rage in Gold\" kicks into a badass midtempo groove-- the closest Neurosis has come to boogie-- with Kelly growling ruefully on top. \nHonor\'s longer tracks are hit-and-miss. \"At the Well\"-- like \"Raise the Dawn\", a staple of the band\'s live sets since late 2010-- is a textbook Neurosis epic, formulaic but effective. The track stretches out from Von Till\'s dark-troubadour opening into elegiac doom, growing gradually more intense. When the drums drop out six minutes in, it\'s a dead giveaway for the torrential burst that follows; still, the shift is a stunner. Like seasoned horror directors, Neurosis know how to shake you up while abiding by convention. In contrast, \"Casting of the Ages\" lacks a narrative arc. Like the Neurosis equivalent of a power ballad, the track follows a straightforward whisper-then-roar format, simply trudging on until it ends. A song like this makes it easy to miss the more feral sound of Enemy of the Sun and 1992\'s Souls at Zero, records that privileged phantasmagoric sensory overload over tidy compositional logic.\nThankfully, the next track, \"All Is Found...In Time\", reestablishes tension. Here, the band sets aside brooding in favor of geeky psychedelic intrigue. Drummer Jason Roeder\'s tom-tom-heavy pummel leads the group through a cosmic-prog overture, which segues into a bluesy half-time heave; then Landis\' Pink Floyd-style synths point the way to a kitschy yet ominous interlude. When the intro returns with a jolt, the ground seems to rush away, as though a shuttle simulator had malfunctioned, blasting the listener into deep space.\nMoments like these help make Honor Found in Decay feel like a fresh start, even though the band\'s core palette hasn\'t changed. It\'s a record that proves these grizzled artisans still know how to flex their muscles.\n', 'Honor.jpg', 'Honor.jpg', 'Metal', '2018-04-04', '2018-04-04'),
(10, 3, 'Hiss Spun', 'Chelsea Wolfe', 'Chelsea Wolfe dives headfirst into sludge metal and creates a unique space where sweetness can be heavy and contact is always uncomfortable.', 'On her sixth official full-length album Hiss Spun, singer-songwriter Chelsea Wolfe attempts to find reconciliation with global-scale suffering by turning to her own personal scars in a heaving wail of guitars. Over her last two albums, 2013’s Pain is Beauty and 2015’s Abyss, Wolfe and her right-hand multi-instrumentalist Ben Chisholm steadily dialed-up the heaviness, first by transplanting Wolfe’s gothic folk approach onto an electronic/industrial bedrock and then by adding shades of doom. For Hiss Spun, their first outing with Converge guitarist/producer Kurt Ballou at the boards, Wolfe and Chisholm dive headfirst into sludge metal.\nWolfe explains in the Hiss Spun press release that she “wanted to write some sort of escapist music, songs that were just about being in your body, and getting free.” Throughout the album, she keeps her lens trained on the body, even as she gradually widens her scope from painful intimate contact to mass tragedies like war and ecological ruin. On “Vex” and “The Culling,” for example, Wolfe uses the phrase “bled out.” Neither song is entirely clear about what or who their protagonists struggle against, but the image of blood subtly connotes something different in each song. On other songs like “Particle Flux,” “Offering,” and “Static Hum,” ravaged landscapes are hard to tell apart from individual trauma.\nAll throughout, proximity and intimacy—with one’s own thoughts and memories, with people who cause injury, the lingering presence of a lost “twin”—is always uncomfortable. “I’ve spent, in different beds/Many moons/And that’s the way I prefer it,” Wolfe sings over a low simmer of downtempo metal on “16 Psyche.” She continues: “I feel it crawl up my legs/Let me wrap you in these thighs/It gets me out of my head again.” Wolfe is a particularly melodious singer, which doesn’t clash with the music so much as it makes the turmoil that inspired it sneak up on you. In some spots, it never seems to materialize at all.\nAs much as Wolfe broods, the songs don’t illuminate her pain all that much. The people and travails she sings about dwell in the periphery of the music like flickering shadows. Heavy music has long been the province of people who find catharsis in confronting demons. Wolfe, Chisholm, Ballou, and their guests take a more indirect path. The sound they make is certainly foreboding, but one can also walk away from this album feeling more settled than disturbed. Being grounded, after all, is what Wolfe was going for. That you have to work in order to appreciate what she went through to get there is what makes Hiss Spun so intriguing.', 'HissSpun.jpg', 'HissSpun.jpg', 'Rock', '2017-10-03', '0000-00-00'),
(11, 44, 'Art', 'Arty', 'be', 'Who you are', 'Sleep.JPG', '', 'doom', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `SurName` varchar(50) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `AddressLine1` varchar(50) NOT NULL,
  `AddressLine2` varchar(50) NOT NULL,
  `AddressLine3` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Password`, `FirstName`, `SurName`, `Mobile`, `AddressLine1`, `AddressLine2`, `AddressLine3`, `Email`) VALUES
(1, 'luke', 'luke123', 'Laura ', 'Snapes', '556565656', 'LIT', 'Moylish', 'Limerick', 'lisa@lit.ie'),
(2, 'mark', 'mark123', 'Saby ', 'Reyes-Kulkarni', '88888888888', 'Main Street', 'Dublin Road', 'Limerick', 'gh@lit.ie'),
(3, 'matthew', 'matthew123', 'David ', 'Fricke', '454545454', 'Ballymearsetown', 'Tipperary', 'Tipperary', 'someone@lit.ie'),
(11, 'john', 'john123', 'Hank ', 'Shteamer', '123', '1, Dresden Row', 'Munich', 'Germany', 'someoneelse@lit.ie'),
(44, 'Tra', 'Ten', 'One', 'Ser', '0863891', '', '', '', 'aser@yahoo.co.uk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`noticeId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `noticeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
