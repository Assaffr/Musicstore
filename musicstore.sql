-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2015 at 12:59 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `musicstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `album_id` int(9) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `album_artist` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `album_duration` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `album_release_year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `album_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `album_long_description` text COLLATE utf8_unicode_ci,
  `album_created` timestamp NOT NULL,
  `album_price` double DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`album_id`, `album_name`, `album_artist`, `album_duration`, `album_release_year`, `album_description`, `album_long_description`, `album_created`, `album_price`) VALUES
(1, 'Paranoid', 'Black Sabbath', '42:07', '1970', 'Paranoid is the second studio album by English rock band Black Sabbath.', 'Paranoid is the second studio album by English rock band Black Sabbath. Released in September 1970, it was the band''s only LP to top the UK Albums Chart until the release of 13 in 2013. Paranoid contains several of the band''s signature songs, including Iron Man, War Pigs and the title track, which was the band''s only Top 20 hit, reaching number 4 in the UK charts. It is often regarded as one of the most quintessential and influential albums in heavy metal history.', '2015-11-05 16:01:52', 8),
(2, 'Master of Puppets', 'Metallica', '54:46', '1986', 'Master of Puppets was released to critical acclaim and has been included in several publications best album lists. Its driving, virtuosic music and angry, political lyrics drew praise from critics outside of the metal community.', 'Master of Puppets is the third studio album by American heavy metal band Metallica, released on March 3, 1986 by Elektra Records. Recorded at the Sweet Silence Studios with producer Flemming Rasmussen, it was the first Metallica album released on a major label. Master of Puppets was the bands last album to feature bassist Cliff Burton, who died in a bus crash in Sweden during the albums promotional tour. The album peaked at number 29 on the Billboard 200 and became the first thrash metal album to be certified platinum. It was certified 6 platinum by the Recording Industry Association of America (RIAA) in 2003 for shipping six million copies in the United States. The album was eventually certified 6 platinum by Music Canada and gold by the British Phonographic Industry.', '2015-11-05 15:37:31', 9),
(3, 'The Number of the Beast', 'Iron Maiden', '39:11', '1982', 'The Number of the Beast is the third studio album by the English heavy metal band Iron Maiden, released in March 1982. It was their first release to feature vocalist Bruce Dickinson and their last with the late drummer Clive Burr.', 'The Number of the Beast is Iron Maidens only album to include songwriting credits from Clive Burr and was the bands first album to feature writing by guitarist Adrian Smith.[6] In addition the release saw Steve Harris adopt a different approach to writing which would cater more for new vocalist Bruce Dickinson. The albums producer Martin Birch remarked I simply didnt think [former vocalist Paul DiAnno] was capable of handling lead vocals on some of the quite complicated directions I knew Steve wanted to explore... When Bruce joined it opened up the possibilities for the new album tremendously.', '2015-11-05 16:02:22', 9.5),
(4, 'Black Sabbath', 'Black Sabbath', '38:12', '1970', 'Black Sabbath is the eponymous debut studio album by English rock band Black Sabbath. Released on 13 February 1970 in the United Kingdom and on 1 June 1970 in the United States, the album reached number 8 on the UK Albums Charts and number 23 on the Billb', 'Black Sabbath is the eponymous debut studio album by English rock band Black Sabbath. Released on 13 February 1970 in the United Kingdom and on 1 June 1970 in the United States, the album reached number 8 on the UK Albums Charts and number 23 on the Billboard charts.\r\nAlthough it was poorly received by most contemporary music critics, Black Sabbath has since been credited with significantly influencing the development of heavy metal music.', '2015-11-05 15:39:11', 7.5),
(5, 'Reign in Blood', 'Slayer', '28:58', '1986', 'Reign in Blood is the third studio album and major label debut by American thrash metal band Slayer. It was released on October 7, 1986 on Def Jam Recordings.', 'Reign in Blood is the third studio album and major label debut by American thrash metal band Slayer. It was released on October 7, 1986 on Def Jam Recordings.[1] The album was the band''s first collaboration with record producer Rick Rubin, whose input helped the band''s sound evolve. Reign in Blood was well received by both critics and fans, and was responsible for bringing Slayer to the attention of a mainstream metal audience. Kerrang! magazine described the record as "the heaviest album of all". Alongside Anthrax''s Among the Living, Megadeth''s Peace Sells... but Who''s Buying? and Metallica''s Master of Puppets, Reign in Blood helped define the sound of the emerging US thrash metal scene in the 1980s, and has remained influential subsequently.\r\n\r\nReign in Blood‍ ''​s release was delayed because of concerns regarding its graphic artwork and lyrical subject matter. The opening track, "Angel of Death", which refers to Josef Mengele and describes acts, such as human experimentation, that Mengele committed at the Auschwitz concentration camp, provoked allegations of Nazism.[2] However, the band stated numerous times that it does not condone Nazism, and are merely interested in the subject.[3] The album was Slayer''s first to enter the Billboard 200; the release peaked at #94, and was certified Gold on November 20, 1992.', '2015-11-05 15:40:00', 8.9),
(6, 'Blizzard of Ozz', 'Ozzy Osbourne', '39:31', '1980', 'Blizzard of Ozz is the debut solo album by British heavy metal vocalist Ozzy Osbourne, released on 12 September 1980 in the UK and on 27 March 1981 in the US.', 'Blizzard of Ozz is the debut solo album by British heavy metal vocalist Ozzy Osbourne, released on 12 September 1980 in the UK and on 27 March 1981 in the US. The album was Osbourne''s first release following his 1979 firing from Black Sabbath.[8] Blizzard of Ozz is the first of two studio albums Osbourne recorded with guitarist Randy Rhoads prior to Rhoads'' death in 1982.', '2015-11-05 15:40:44', 8.2),
(7, 'West Side Soul', 'Magic Sam Blues Band', '44:26', '1967', 'West Side Soul is the debut album by Magic Sam.', 'West Side Soul is the debut album by Magic Sam. It is cited by Stephen Thomas Erlewine as one of the great electric blues albums.', '2015-11-05 15:41:25', 8.3),
(8, 'Songs For Distingue Lovers', 'Billie Holiday', '33:04', '1957', 'Songs for Distingue Lovers is an album by jazz singer Billie Holiday released in 1957 on Verve Records.', 'Songs for Distingue Lovers is an album by jazz singer Billie Holiday released in 1957 on Verve Records. It was originally available in both mono, catalogue number MGV 8257, and stereo, catalog number MGVS 6021. It was recorded at Capitol Studios in Los Angeles from January 3 to January 9, 1957, and produced by Norman Granz.', '2015-11-05 15:42:14', 12.5),
(9, '1928 Sessions', 'Mississippi John Hurt', '39:25', '1928', 'Mississippi John Hurt recorded 13 country-blues songs for the Okeh Electric Records company in 1928.', 'A truly wonderful performer whose gentle approach was a contrast to the harsh, gritty sound of many of his Mississippi contemporaries. This disc presents all the recordings he made in 1928 and is essential listening- Got the Blues, Can''t Be Satisfied; Blessed Be the Name; Frankie; Big Leg Blues; Ain''t No Tellin''; Candy Man Blues; Nobody''s Dirty Business and more.', '2015-11-05 15:43:18', 1),
(10, 'Bessie Smith', 'The Complete Recordings', '59:21', '1924', 'In the 1970s, Bessie Smith''s recordings were reissued on five double LPs.', 'In the 1970s, Bessie Smith''s recordings were reissued on five double LPs. Her CD reissue series also has five volumes (the first four are double-CD sets) with the main difference being that the final volume includes all of her rare alternate takes (which were bypassed on LP). The first set (which, as with all of the CD volumes, is housed in an oversize box that includes an informative booklet) contains her first 38 recordings. During this early era, Bessie Smith had no competitors on record and she was one of the few vocalists who could overcome the primitive recording techniques; her power really comes through. Her very first recording (Alberta Hunter''s "Down Hearted Blues") was a big hit and is one of the highlights of this set along with "''Tain''t Nobody''s Bizness If I Do" (two decades before Billie Holiday), "Jail-House Blues," and "Ticket Agent, Ease Your Window Down." Smith''s accompaniment is nothing that special (usually just a pianist and maybe a weak horn or two), but she dominates the music anyway, even on two vocal duets with her rival Clara Smith. All of these volumes reward close listenings and are full of timeless recordings.', '2015-11-05 15:44:36', 5.6),
(11, 'Reverend Gary Davis', 'Harlem Street Singer', '42:54', '1960', 'Recorded during a three hour session on August 24, 1960, Gary Davis laid down 12 of his most impassioned spirituals for Harlem Street Singer.', 'Recorded during a three hour session on August 24, 1960, Gary Davis laid down 12 of his most impassioned spirituals for Harlem Street Singer. Starting off the session with a version of Blind Willie Johnson''s "If I Had My Way I''d Tear That Building Down," here renamed "Samson and Delilah," Davis is in fine form. His vocals are as expressive as Ray Charles'' while similar in richness to Richie Havens'' work. Harlem Street Singer features his inspired country blues fingerpicking as well. ', '2015-11-05 15:45:50', 9.4),
(12, 'Big Bill Broonzy', 'Trouble In Mind', '59:20', '2000', 'This is something of a best-of for Broonzy''s Folkways recordings, done in 1956-57 near the end of his life.', 'This is something of a best-of for Broonzy''s Folkways recordings, done in 1956-57 near the end of his life, all featuring just his voice and his acoustic guitar (although Pete Seeger adds banjo to a live version of "This Train (Bound for Glory)"). Although Broonzy, who died in 1958 of throat cancer, was likely not in peak physical shape by this time, you wouldn''t suspect that from the quality of the performances. ', '2015-11-05 15:46:44', 10.1),
(13, 'Albert King', 'Born Under A Bad Sign', '34:19', '1967', 'Born Under a Bad Sign is the second studio album by Albert King released in 1967.', 'Born Under a Bad Sign is the second studio album by Albert King released in 1967. The album became "one of the most popular and influential blues albums of the late ''60s"[2] and has been acknowledged by the Grammy Hall of Fame, the Blues Foundation Hall of Fame, and Rolling Stone magazine.', '2015-11-05 15:47:45', 7.3),
(14, 'Mance Lipscomb', 'Texas Sharecropper & Songster', '48:12', '1960', 'Arhoolie''s Texas Sharecropper & Songster is a recording made in 1960, during the blues revival. ', 'Arhoolie''s Texas Sharecropper & Songster is a recording made in 1960, during the blues revival. Prior to the blues revival, Mance Lipscomb was an unknown, and his discovery was one of the positive byproducts of the revival.', '2015-11-05 15:48:34', 8.3),
(15, 'The Stone Roses', 'The Stone Roses', '49:02', '1989', 'The Stone Roses is the debut album by English rock band The Stone Roses, released in May 1989 by Silvertone Records.', 'The Stone Roses is the debut album by English rock band The Stone Roses, released in May 1989 by Silvertone Records. The group recorded most of the album at Battery Studios in London with producer John Leckie. Although The Stone Roses was not an immediate success, its standing improved significantly among most critics, many of whom have since voted it high in polls of the greatest albums of all time.', '2015-11-05 15:49:14', 10.6),
(16, 'Daydream Nation', 'Sonic Youth', '70:47', '1988', 'Daydream Nation is the fifth studio album by American alternative rock band Sonic Youth.', 'Daydream Nation is the fifth studio album by American alternative rock band Sonic Youth. The band recorded the album between July and August 1988 at Greene St. Recording in New York City, and it was released in October by Enigma Records as a double album. Daydream Nation was the group''s last record before signing to a major label.', '2015-11-05 15:49:51', 15.3),
(17, 'Nevermind', 'Nirvana', '49:09', '1991', 'Nevermind is the second studio album by the American rock band Nirvana, released on September 24, 1991.', 'Nevermind is the second studio album by the American rock band Nirvana, released on September 24, 1991. Produced by Butch Vig, Nevermind was the group''s first release on DGC Records. Frontman Kurt Cobain sought to make music outside the restrictive confines of the Seattle grunge scene, drawing influence from groups such as the Pixies and their use of "loud/quiet" dynamics. It is their first album to feature drummer Dave Grohl.', '2015-11-05 15:50:26', 13.5),
(18, 'OK Computer', 'Radiohead', '53:27', '1997', 'OK Computer is the third studio album by the English alternative rock band Radiohead, released in 1997 on Parlophone and Capitol Records.', 'OK Computer is the third studio album by the English alternative rock band Radiohead, released in 1997 on Parlophone and Capitol Records. OK Computer was the first self-produced Radiohead album, with assistance from Nigel Godrich. Radiohead recorded the album in Oxfordshire and Bath between 1996 and early 1997, with most of the recording completed in the historic mansion St Catherine''s Court.', '2015-11-05 15:51:10', 24.3),
(19, 'In Utero', 'Nirvana', '48:49', '1993', 'In Utero is the third and final studio album by the American rock band Nirvana, released on September 13, 1993, by DGC Records.', 'In Utero is the third and final studio album by the American rock band Nirvana, released on September 13, 1993, by DGC Records. Nirvana intended the record to diverge significantly from the polished production of its previous album, Nevermind (1991). To capture a more abrasive and natural sound, the group hired engineer Steve Albini to record In Utero during a two-week period in February 1993 at Pachyderm Studio in Cannon Falls, Minnesota.', '2015-11-05 15:51:55', 12.4),
(20, 'Siamese Dream', 'The Smashing Pumpkins', '62:17', '1993', 'Siamese Dream is the second album by the American alternative rock band The Smashing Pumpkins, released on July 27, 1993 on Virgin Records.', 'Siamese Dream is the second album by the American alternative rock band The Smashing Pumpkins, released on July 27, 1993 on Virgin Records. The album fused diverse influences such as grunge, shoegazing,[2][3] dream pop,[4] heavy metal,[3] and progressive rock.', '2015-11-05 15:52:41', 12.8),
(21, 'Der Ring des Nibelungen', 'Richard Wagner', '85:42', '1876', 'Der Ring des Nibelungen (The Ring of the Nibelung), WWV 86, is a cycle of four epic operas by the German composer Richard Wagner.', 'Der Ring des Nibelungen (The Ring of the Nibelung), WWV 86, is a cycle of four epic operas by the German composer Richard Wagner. The works are based loosely on characters from the Norse sagas and the Nibelungenlied. The composer termed the cycle a Buhnenfestspiel (stage festival play), structured in three days preceded by a Vorabend (preliminary evening). It is often referred to as the Ring Cycle, Wagners Ring, or simply The Ring.', '2015-11-05 15:53:22', 42.3),
(22, 'Symphonies Nos. 5 & 7', 'Beethoven', '92:28', '1996', 'Long regarded as the quintessential interpretation of the most popular and best-loved symphony ever written, this performance of the Fifth has everything passion, precision, drama, lyric beauty, and a coiled fury.', 'Long regarded as the quintessential interpretation of the most popular and best-loved symphony ever written, this performance of the Fifth has everything: passion, precision, drama, lyric beauty, and a coiled fury in the first movement that sets your pulse racing from the very first note. Carlos Kleiber has made very few recordings in his distinguished career, but almost all are special. If you own no other copy of this symphony, this is the one to get. It comes with an exceptional performance of the Seventh--not quite as gripping as the Fifth, but definitely one of the great ones. There is classical music, and there are classic recordings of classical music. This one''s a classic.', '2015-11-05 15:54:09', 34.2),
(23, 'Late String Quartets', 'Beethoven', '72:07', '1995', 'These six quartets (counting the Grobe Fuge) are Beethoven''s last major, completed compositions.', 'These six quartets (counting the Groe Fuge) are Beethoven''s last major, completed compositions. Although dismissed by the musicians and audiences of Beethoven''s time, they are widely considered to be among the greatest musical compositions of all time, and have inspired many composers and musicians.', '2015-11-05 15:55:26', 15.8),
(24, 'Sonata No. 3 etc', 'Chopin', '95:23', '1987', 'Deutsche Grammophon is pleased to announce the signing of an exclusive recording-agreement with the pianist Ingolf Wunder, winner of the second prize at the 2010 Warsaw International Chopin Competition.', 'Deutsche Grammophon is pleased to announce the signing of an exclusive recording-agreement with the pianist Ingolf Wunder, winner of the second prize at the 2010 Warsaw International Chopin Competition. Noted critic John Allison described his appearances as: Standing room filled up for Ingolf Wunder,indicating that he is now the audience''s favorite. It''s not hard to see why,and his E minor Concerto had authority right from the opening statement. Wunder has a way of capturing an audience''s attention with poetry and emotion; his playing is about sound, not just notes, and in that respect he was in a league of own.', '2015-11-05 15:56:29', 35.6),
(25, 'Complete Piano Concertos', 'Mozart', '58:12', '1986', 'Mozart''s piano concertos occupy a very special place amongst his works. Circumstances enabled him to become regarded in Vienna as composer and performer when he presented twelve of the later concertos to an appreciative audience in Vienna in the 1780s.', 'Mozart''s piano concertos occupy a very special place amongst his works. Circumstances enabled him to become regarded in Vienna as composer and performer when he presented twelve of the later concertos to an appreciative audience in Vienna in the 1780s. His letters reveal how personal and important these works were to him. The piano concertos also show how he could imbue a musical form with a depth and a breadth that no one before, and few since, has encompassed.', '2015-11-05 15:57:52', 52.6),
(26, 'Johnny Cash At Folsom Prison', 'Johnny Cash', '45:05', '1968', 'At Folsom Prison is a live album and 27th overall album by Johnny Cash, released on Columbia Records in May 1968.', 'At Folsom Prison is a live album and 27th overall album by Johnny Cash, released on Columbia Records in May 1968. After his 1955 song Folsom Prison Blues, Cash had been interested in recording a performance at a prison.', '2015-11-05 15:58:39', 13.6),
(27, 'Gunfighter Ballads and Trail Songs', 'Marty Robbins', '44:44', '1959', 'Gunfighter Ballads and Trail Songs is an album released by Marty Robbins on the Columbia Records label in September 1959, peaking at #6 on the U.S. pop albums chart.', 'Gunfighter Ballads and Trail Songs is an album released by Marty Robbins on the Columbia Records label in September 1959, peaking at #6 on the U.S. pop albums chart. It was recorded on April 7, 1959, and was certified a gold record by the RIAA in 1965.[1] It is perhaps best known for Robbins'' most successful single, El Paso, a major hit on both the country and pop music charts. It reached #1 in both charts at the start of 1960 and won the Grammy Award for Best Country & Western Recording the following year.', '2015-11-05 15:59:30', 15.6),
(28, 'Garth Brooks', 'No Fences', '38:29', '1990', 'No Fences is the second studio album by the American country music artist Garth Brooks. It was released on August 27, 1990, and reached #1 on Billboard''s Top Country Albums chart. ', 'No Fences is the second studio album by the American country music artist Garth Brooks. It was released on August 27, 1990, and reached #1 on Billboard''s Top Country Albums chart. The album also reached #3 on the Billboard 200. On the latter chart it stayed in the top 40 for 126 weeks,[6] only one week less than Shania Twain''s Come On Over, the Soundscan era''s record holder. No Fences remains Brooks'' best-selling studio album to date with 17 million copies shipped in the US,[7] and is the album that made him an international star', '2015-11-05 16:14:46', 5.3),
(29, 'All the People Are Talkin', 'John Anderson', '29:16', '1983', 'All The People Are Talkin'' is the fifth studio album by country artist John Anderson. It was released in 1983 under Warner Bros. Records.', 'John Anderson was just coming off his monster hit Swingin when this set came out in 1983, perhaps giving him the courage to record a couple of bluesy rock & roll tunes, although most of the material is cut from the hardcore cloth Anderson had become famous for. Black Sheep is a growling rocker about hard luck and hard times written by Hollywood writer Danny Darst and director Robert Altman, who knew a thing or two about Nashville.', '2015-11-05 16:15:46', 15.6),
(30, 'Lyle Lovett', 'Lyle Lovett', '32:30', '1986', 'Lyle Lovett is Lovett''s 1986 eponymous debut album. By the mid-1980s Lovett had already distinguished himself in the burgeoning Texas singer-songwriter scene.', 'Lyle Lovett is Lovett''s 1986 eponymous debut album. By the mid-1980s Lovett had already distinguished himself in the burgeoning Texas singer-songwriter scene. He had performed in the New Folk competition at the Kerrville Folk Festival in 1980 and returned to win in 1982.[7] In 1984 Lovett recorded a four song demo with the help of the Phoenix band, J. David Sloan and the Rogues.[8] His music had begun to be distributed by the Fast Folk Musical Magazine.', '2015-11-05 16:16:47', 15.6),
(31, 'American Saturday Night', 'Brad Paisley', '62:16', '2009', 'American Saturday Night is the seventh studio album by American country music artist Brad Paisley. It was released on June 30, 2009, by Arista Nashville.', 'American Saturday Night is the seventh studio album by American country music artist Brad Paisley. It was released on June 30, 2009, by Arista Nashville. Like all of his previous studio albums, it is produced by Frank Rogers.[2] The first single, Then, has become his fourteenth Number One on the Hot Country Songs chart. iTunes released songs from the album weekly as part of the countdown to the album''s release.', '2015-11-05 16:17:52', 7.3),
(32, 'Kind of Blue', 'Miles Davis', '45:44', '1959', 'Kind of Blue is a studio album by American jazz musician Miles Davis, released on August 17, 1959, by Columbia Records. It was recorded earlier that year on March 2 and April 22 at Columbia''s 30th Street Studio in New York City. ', 'Kind of Blue is a studio album by American jazz musician Miles Davis, released on August 17, 1959, by Columbia Records. It was recorded earlier that year on March 2 and April 22 at Columbia''s 30th Street Studio in New York City. The recording sessions featured Davis''s ensemble sextet, with pianist Bill Evans, drummer Jimmy Cobb, bassist Paul Chambers, and saxophonists John Coltrane and Julian Cannonball Adderley. After the entry of Evans into his sextet, Davis followed up on the modal experimentations of Milestones (1958) by basing Kind of Blue entirely on modality, in contrast to his earlier work with the hard bop style of jazz.', '2015-11-05 16:18:43', 42.6),
(33, 'A Love Supreme', 'John Coltrane', '33:02', '1965', 'A Love Supreme is a studio album recorded by John Coltrane''s quartet in December 1964[2] and released by Impulse! Records in February 1965.', 'A Love Supreme is a studio album recorded by John Coltrane''s quartet in December 1964[2] and released by Impulse! Records in February 1965. It is generally considered to be Coltrane''s greatest work, as it melded the hard bop sensibilities of his early career with the modal jazz and free jazz styles he adopted later.', '2015-11-05 16:19:33', 12.7),
(34, 'Time Out', 'Dave Brubeck Quartet', '38:21', '1959', 'Time Out is an album by the American jazz group the Dave Brubeck Quartet, released in 1959 on Columbia Records.', 'Time Out is an album by the American jazz group the Dave Brubeck Quartet, released in 1959 on Columbia Records. Recorded at Columbia''s 30th Street Studio in New York City, it is based upon the use of time signatures that were unusual for jazz such as 9/8 and 5/4.[6] The album is a subtle blend of cool and West Coast jazz.[7][8] It peaked at #2 on the Billboard pop albums chart, and has been certified platinum by the RIAA.', '2015-11-05 16:20:14', 25.6),
(35, 'Mingus Ah Um', 'Charles Mingus', '65:23', '1959', 'Mingus Ah Um is a studio album by American jazz musician Charles Mingus, released in 1959 by Columbia Records. It was his first album recorded for Columbia. The cover features a painting by S. Neil Fujita.', 'The Penguin Guide to Jazz on CD calls this album an extended tribute to ancestors (and awards it one of their rare crowns), and Mingus''s musical forebears figure largely throughout. Better Git It In Your Soul is inspired by gospel singing and preaching of the sort that Mingus would have heard as a child growing up in Watts, Los Angeles, California, while Goodbye Pork Pie Hat is a reference (by way of his favored headgear) to saxophonist Lester Young (who had died shortly before the album was recorded). The origin and nature of Boogie Stop Shuffle is self-explanatory: a twelve-bar blues with four themes and a boogie bass backing that passes from stop time to shuffle and back.', '2015-11-05 16:20:58', 23.4),
(36, 'The Shape of Jazz to Come', 'Ornette Coleman', '37:59', '1959', 'The Shape of Jazz to Come is the third album by jazz musician Ornette Coleman. Although Coleman initially wished for the album to be titled Focus on Sanity, after one of the songs on the album.', 'The Shape of Jazz to Come is the third album by jazz musician Ornette Coleman. Although Coleman initially wished for the album to be titled Focus on Sanity, after one of the songs on the album, it was ultimately titled The Shape of Jazz to Come at the urging of Atlantic producer Nesuhi Ertegun, who felt that the title would give consumers an idea about the uniqueness of the LP.[1] Released on Atlantic Records in 1959, it was his debut on the label and his first album featuring his working quartet including himself, trumpeter Don Cherry, bassist Charlie Haden, and drummer Billy Higgins.[2] The recording session for the album took place on May 22, 1959, at Radio Recorders in Hollywood, California.[1] Two outtakes from the session, Monk and the Nun and Just for You, would later be released respectively on the 1970s compilations Twins and The Art of the Improvisers. In 2012, the Library of Congress added the album to the National Recording Registry.', '2015-11-05 16:21:58', 23.7),
(37, 'Dubnobasswithmyheadman', 'Underworld', '72:53', '1994', 'dubnobasswithmyheadman is the third album by Underworld, released in the UK on Junior Boy''s Own on 24 January 1994.', 'dubnobasswithmyheadman is the third album by Underworld, released in the UK on Junior Boy''s Own on 24 January 1994.[1][2] It was the first Underworld album after the 1980s version of the band had made the transition from synthpop to techno and progressive house and is also the first album to feature Darren Emerson as a band member, ushering in the "MK2" phase of the band, which continued until Emerson''s departure in 2001.', '2015-11-05 16:22:51', 8.6),
(38, 'Homework', 'Daft Punk', '73:53', '1997', 'Homework is the debut studio album by the French electronic music duo Daft Punk, released on 20 January 1997 by Virgin Records.', 'Homework is the debut studio album by the French electronic music duo Daft Punk, released on 20 January 1997 by Virgin Records. Homework‍‍ ''​‍s success brought worldwide attention to French house music. The album revived house music and departed from the Eurodance formula. The duo produced the tracks without plans to release an album. After working on projects that were intended to be separate singles over five months, they considered the material good enough for an album.', '2015-11-05 16:23:29', 24.5),
(39, 'Play', 'Moby', '63:12', '1999', 'Play is the fifth studio album by American electronica musician Moby, released on May 17, 1999 on V2 Records. It was recorded at his Little Italy apartment in New York City.', 'While some of Moby''s earlier work garnered critical and commercial success within the electronic dance music scene, Play was both a critical success and a commercial phenomenon. The album introduced Moby to a worldwide mainstream audience, not only through a large number of hit singles (that helped the album to dominate worldwide charts for two years), but also through unprecedented licensing of his music in films, television, and commercial advertisements. It eventually became the biggest-selling album of its genre, with over 12 million copies sold worldwide.', '2015-11-05 16:24:05', 23.6),
(40, 'Leftism', 'Leftfield', '69:37', '1995', 'Leftism is the first studio album by electronica musicians Paul Daley and Neil Barnes under the name Leftfield.', 'Leftism is the first studio album by electronica musicians Paul Daley and Neil Barnes under the name Leftfield. The album was released in 1995 on Columbia Records. Leftism consisted mostly of reworked versions of previous singles by Leftfield and new original pieces.', '2015-11-05 16:24:47', 6.2),
(41, 'Six Wheels on My Wagon', 'Fluke', '76:43', '1993', 'Six Wheels On My Wagon is the second album by British electronic music group Fluke, first released in 1993', 'Six Wheels On My Wagon is the second album by British electronic music group Fluke, first released in 1993. The most prominent track on the album, Slid is featured in the 1993 Phillip Noyce film Sliver as well as being a club favourite of popular DJ Sasha.', '2015-11-05 16:26:05', 5.3),
(42, 'Trainspotting Soundtrack', 'Various Artists', '75:14', '1996', 'The Trainspotting soundtracks are two soundtrack albums released following the film adaptation of Irvine Welsh''s novel of the same name.', 'The Trainspotting soundtracks are two soundtrack albums released following the film adaptation of Irvine Welsh''s novel of the same name. The first was released on July 9, 1996. The comparatively huge fanbase for both the film and the original soundtrack prompted a release of a second soundtrack on October 21, 1997. This second soundtrack included songs from the film that didn''t make the cut for the first album, as well as songs that didn''t appear in the final film, but were involved at earlier stages or were used as inspiration by the filmmakers', '2015-11-05 16:25:22', 24.9),
(43, 'Pulp Fiction Soundtrack', 'Various Artists', '41:11', '1994', 'Music from the Motion Picture Pulp Fiction is the soundtrack to Quentin Tarantino''s 1994 film Pulp Fiction. No traditional film score was commissioned for Pulp Fiction. The film contains a mix of American rock and roll, surf music, pop and soul. ', 'Music from the Motion Picture Pulp Fiction is the soundtrack to Quentin Tarantino''s 1994 film Pulp Fiction. No traditional film score was commissioned for Pulp Fiction. The film contains a mix of American rock and roll, surf music, pop and soul. The soundtrack is equally untraditional, consisting of nine songs from the movie, four tracks of dialogue snippets followed by a song, and three tracks of dialogue alone. Seven songs featured in the movie were not included in the original 41-minute soundtrack.', '2015-11-05 16:26:54', 27.5),
(44, 'Pretty In Pink Soundtrack', 'Various Artists', '39:35', '1986', 'As with previous films by John Hughes, Pretty in Pink featured a soundtrack composed mostly of new wave music.', 'As with previous films by John Hughes, Pretty in Pink featured a soundtrack composed mostly of new wave music. While director Howard Deutch originally intended the film to primarily contain theme music, Hughes influenced Deutch''s decision to use post-punk music throughout the film. The title song by the Psychedelic Furs acted as a bit of inspiration for the film and was re-recorded specifically for the film''s opening sequence in a version that was less raw than the original; it was released in 1981 for the album Talk Talk Talk. Left of Center was remixed by Arthur Baker.', '2015-11-05 16:27:46', 20.7),
(45, 'The Hunger Games: Catching Fire Soundtrack', 'Various Artists', '63:10', '2013', 'The Hunger Games: Catching Fire Original Motion Picture Soundtrack is the official soundtrack to the 2013 American science fiction adventure film The Hunger Games Catching Fire.', 'On May 14, 2013, Alexandra Patsavas was listed in the credits as the new music supervisor, replacing T Bone Burnett from the first film. Christina Aguilera announced over Twitter on September 26, 2013 that her new song, "We Remain", would be part of the official soundtrack of the film.[12] On September 26, as a part of the #ticktock campaign for The Hunger Games: Catching Fire, #ticktock9 revealed the artwork and track-listing to the soundtrack of the film.', '2015-11-05 16:30:53', 27.3),
(46, 'Guardians of the Galaxy: Awesome Mix, Vol. 1 ', 'Various Artists', '44:34', '2014', 'Guardians of the Galaxy: Awesome Mix Vol. 1 (Original Motion Picture Soundtrack) is the soundtrack album for the Marvel Studios film of the same name. Featuring the songs present on Peter Quill''s mixtape in the film.', 'Guardians of the Galaxy: Awesome Mix Vol. 1 (Original Motion Picture Soundtrack) is the soundtrack album for the Marvel Studios film of the same name. Featuring the songs present on Peter Quill''s mixtape in the film,[1] the album was released by Hollywood Records on July 29, 2014. A separate film score album, composed by Tyler Bates, was also released by Hollywood Records on the same date, along with a deluxe version featuring both albums.[1] The soundtrack album reached number one on the US Billboard 200 chart, becoming the first soundtrack album in history consisting entirely of previously released songs to top the chart.', '2015-11-05 16:32:51', 36.6),
(47, 'AM', 'Arctic Monkeys', '41:43', '2013', 'AM is the fifth studio album by the English indie rock band Arctic Monkeys. It was produced by James Ford and co-produced by Ross Orton at Sage & Sound Recording in Los Angeles.', 'AM is the fifth studio album by the English indie rock band Arctic Monkeys. It was produced by James Ford and co-produced by Ross Orton at Sage & Sound Recording in Los Angeles and Rancho De La Luna in Joshua Tree, California,[6] and released in September 2013 through Domino. The album was promoted by the singles R U Mine?, Do I Wanna Know?, Why''d You Only Call Me When You''re High?, One for the Road, Arabella, and Snap Out of It. It features guest appearances by Josh Homme, Bill Ryder-Jones, and Pete Thomas.', '2015-11-05 16:33:37', 58.9),
(48, 'Ziggy Stardust', 'David Bowie', '38:37', '1972', 'The Rise and Fall of Ziggy Stardust and the Spiders from Mars (often shortened to Ziggy Stardust) is the fifth studio album by English musician David Bowie.', 'The Rise and Fall of Ziggy Stardust and the Spiders from Mars (often shortened to Ziggy Stardust) is the fifth studio album by English musician David Bowie, which is loosely based on a story of a fictional rock star named Ziggy Stardust.[3] It peaked at No. 5 in the United Kingdom[4] and No. 75 in the United States on the Billboard Music Charts.[5]\r\n\r\nThe album tells the story of Bowie''s alter ego Ziggy Stardust, a rock star who acts as a messenger for extraterrestrial beings. Bowie created Ziggy Stardust while in New York City promoting Hunky Dory and performed as him on a tour of the United Kingdom, Japan and North America.[6] The album, and the character of Ziggy Stardust, was known for its glam rock influences and themes of sexual exploration and social commentary. These factors, coupled with the ambiguity surrounding Bowie''s sexuality and fuelled by a ground-breaking performance of "Starman" on Top of the Pops,[7] led to the album being met with controversy and since hailed as a seminal work.', '2015-11-05 16:34:28', 89.6),
(49, 'Contra', 'Vampire Weekend', '36:40', '2010', 'Contra is the second studio album by the American indie rock band Vampire Weekend, released in January 2010 on XL Recordings. It debuted at number one on the US Billboard 200.', 'Contra is the second studio album by the American indie rock band Vampire Weekend, released in January 2010 on XL Recordings. It debuted at number one on the US Billboard 200. The album title is intended as a thematic allegory and a complex reference to the Nicaraguan counter-revolutionaries, the 1980 album by The Clash Sandinista!, and partially to the Contra video game. \nThe album was recognized as one of The 100 Best Albums of the Decade So Far by Pitchfork Media in August 2014.', '2015-11-05 16:35:13', 24.8),
(50, 'Hot Fuss', 'The Killers', '45:39', '2004', 'Hot Fuss is the debut studio album by American rock band The Killers, released on June 7, 2004 in the United Kingdom and on June 15, 2004 in the United States.[1] The album and its first three singles went on to garner five Grammy Award nominations.', 'The album was recorded at various points throughout 2003 with Jeff Saltzman in Berkeley, California, with the exception of Everything Will Be Alright which was recorded in guitarist Dave Keuning''s apartment and engineered by Corlene Byrd. Many of the tracks were originally recorded as demos, which the band decided to keep for their spontaneity. The album was mixed by Mark Needham at Cornerstone Studios, Los Angeles and Alan Moulder at Eden Studios in London.', '2015-11-05 16:36:11', 44.1),
(51, 'Ultraviolence', 'Lana Del Rey', '51:24', '2014', 'Ultraviolence is the third studio album and second major-label record by American singer-songwriter Lana Del Rey, released on June 13, 2014 by UMG Recordings.', 'Ultraviolence is the third studio album and second major-label record by American singer-songwriter Lana Del Rey, released on June 13, 2014 by UMG Recordings. Despite originally dismissing the possibility of releasing another record after her major-label debut Born to Die (2012), Del Rey began planning its follow-up in 2013. Production continued into 2014, at which time she heavily collaborated with Dan Auerbach to revamp what she initially considered to be the completed record. The project saw additional contributions from producers including Paul Epworth, Greg Kurstin, Daniel Heath, and Rick Nowels.', '2015-11-05 16:36:52', 76.1),
(52, 'Give Up', 'The Postal Service', '44:59', '2003', 'Give Up is the debut album by electronic music band The Postal Service, released February 19, 2003 on Sub Pop Records.', 'The Postal Service''s only full-length release, Give Up was the second Sub Pop Records release to receive platinum certification, their best selling album since Nirvana''s Bleach.[1] The album peaked at #114 on the U.S. Billboard 200 album chart in its initial release; the 2013 tenth-anniversary reissue of the album peaked at #45 in April 2013. As of January 2013, Give Up had sold 1.07 million copies.[2] The album was generally well received, and critics commented on its throwbacks to the eighties new wave genre.', '2015-11-05 16:37:48', 77.2),
(53, 'Oracular Spectacular', 'MGMT', '40:18', '2007', 'Oracular Spectacular is the first major label studio album by American band MGMT, released digitally October 2, 2007 on RED Ink Records and physically on January 22, 2008 by Columbia Records.', 'Oracular Spectacular is the first major label studio album by American band MGMT, released digitally October 2, 2007 on RED Ink Records and physically on January 22, 2008 by Columbia Records.[1] The album, which has sold over 1 million copies worldwide, was nominated for best international album in the 2009 BRIT Awards. It features new versions of both Kids and Time to Pretend, songs from their previous release, Time to Pretend EP (2005), the opening track serving as a mission statement and theme continued through the proceeding tracks. Though Oracular Spectacular never sold more than 17,000 in a week, it has been a consistent seller since January 2008, selling at least 2,000 copies per week through April 2010', '2015-11-05 16:38:39', 22.8),
(54, 'Arular', 'M.I.A', '38:06', '2005', 'Arular is the debut studio album by English-Sri Lankan recording artist M.I.A., released in the United States on 22 March 2005 and a month later in the United Kingdom with a slightly different track listing.', 'M.I.A. wrote or co-wrote all the songs on the album and created the basic backing tracks using a Roland MC-505 sequencer/drum machine given to her by long-time friend Justine Frischmann. Collaborators included Switch, Diplo, Richard X and Ant Whiting. The album''s title is the political code name used by her father, Arul Pragasam, during his involvement with Sri Lankan Tamil militant groups, and themes of conflict and revolution feature heavily in the lyrics and artwork. Musically, the album incorporates styles that range from hip hop and electroclash to funk carioca and punk rock.', '2015-11-05 16:39:30', 25.2),
(55, '1000 Forms of Fear', 'Sia', '48:41', '2014', '1000 Forms of Fear is the sixth studio album by Australian singer Sia. It was released on 4 July 2014 by Monkey Puzzle and RCA Records worldwide, and Inertia Records in Australia.', '1000 Forms of Fear received mostly positive reviews from music critics, who praised Furler''s vocals as well as the album''s lyrical content. The album debuted at number one on the US Billboard 200 with first-week sales of 52,000 copies. As of October 26th 2015, it has been certified Gold by the RIAA denotining sales of 500,000 copies in the United States. The release also charted atop the charts of Australia and Canada, and reached the top five charts of Denmark, New Zealand, Norway, Sweden, Switzerland, and the United Kingdom.', '2015-11-05 16:40:05', 24.1),
(56, 'Every Open Eye', 'Chvrches', '42:02', '2015', 'Every Open Eye is the second studio album by Scottish synthpop band Chvrches, released on 25 September 2015.[3] Self-produced, it is the band''s follow-up to their critically acclaimed debut, The Bones of What You Believe (2013).', 'Chvrches began work on their second album in January 2015, six weeks after returning from touring to promote The Bones of What You Believe.[6] Recording took place in a studio in a basement flat owned by Cook,[7] refurbished with the advance for the new album.[6] The trio would write a rough instrumental, Mayberry would pen lyrics and they would then put together a demo track.[8] The band wrote around thirty demos in all.', '2015-11-05 16:40:47', 55.1),
(57, 'Untrue', 'Burial', '50:28', '2007', 'Untrue is the second studio album by British electronic music producer Burial. Released on 5 November 2007 through Hyperdub, the album was produced by Burial from 2006 to 2007 using digital audio editing software.', 'Whilst retaining several elements of his past work, including his debut album Burial (2006), Untrue marked a development in Burial''s sound through its more prominent utilisation of pitch-shifted and time-stretched vocal samples. The album also contains influences of Burial''s own musical tastes, most notably the UK garage and hardcore music genres.', '2015-11-05 16:41:23', 7.2),
(58, 'Bangarang', 'Skrillex', '30:08', '2011', 'Bangarang is the fifth EP by American electronic music producer Skrillex. It was released on December 23, 2011 exclusively via Beatport while being released on other digital retailers on December 27, 2011.', 'Bangarang received mixed reviews from music critics. The EP was a commercial success upon release, charting within Australia, Canada, New Zealand, Norway, Switzerland, the United Kingdom and the United States. Its lead single, Bangarang, charted in multiple countries worldwide and reached the top ten in Australia and Belgium. Due to strong digital sales following the EP''s release, Kyoto and Breakn'' a Sweat charted in multiple countries as well. Breakn'' a Sweat was featured in the 2012 documentary film Re:Generation.', '2015-11-05 16:42:17', 2.1),
(59, 'London Zoo', 'The Bug', '45:30', '2008', 'London Zoo is the third album by the English artist Kevin Martin under his alias of The Bug. It was released in 2008 by Ninja Tune Records. The album was released to widespread critical acclaim.', 'Kevin Martin, under a dozen-or-so aliases and across numerous genres, has been screwing around with deep bass for well over a decade. 1997''s Tapping the Conversation-- a concept album conceived as a surrogate soundtrack to Francis Ford Coppola''s The Conversation-- was his first release as the Bug, and in retrospect, it sounds like an alternate-universe prototype of dubstep, based on instrumental hip-hop rather than UK garage rhythms. By the time he issued his 2003 follow-up Pressure, he''d already charged headlong into heavy digital ragga, building a repertoire of grimy, distorted beats that mutated dancehall into a glitchy, blown-out commotion.', '2015-11-05 16:43:17', 6.8),
(60, 'My Demons', 'Distance', '41:01', '2007', 'My Demons is the debut album by dubstep producer Distance. It was released in 2007 on Ziq''s Planet Mu records.', 'Planet Mu are proud to present the debut album from Bromley''s Distance. Rinse 100.3 FM''s DJ Distance first came to prominence on Sting records with tracks like Breathing Space, Shiverz & Tropical Rub. After having recorded for Boka, Hotflush and Tempa, he moved over to Planet Mu for the massive 12 featuring the anthems Traffic & Cyclops. His new album My Demons is another leap ahead into uncharted dubstep territory.', '2015-11-05 16:47:25', 7.9),
(61, 'Oneiric', 'Boxcutter', '92:10', '2006', 'Oneiric is the debut album by electronic musician Boxcutter (Barry Lynn). The word oneiric means of or pertaining to dreams; resembling a dream, dreamlike.', 'This release established Boxcutter''s experimental breaks and bass-driven style of music, which at first appraisal was labeled as dubstep because of its similar 2-step rhythms and warped basslines. However, comparisons were also drawn to IDM[2] in that most tracks featured heavy use of effects and processed samples of live instrumentation. Tauhid, for instance, begins with a distorted flute sample that intercuts throughout the track, while Sunshine V.I.P. features choppy, rapid-fire beat sequencing sourced from live drums in addition to a flute melody.', '2015-11-05 16:45:01', 20.1);

-- --------------------------------------------------------

--
-- Table structure for table `albums_stock`
--

CREATE TABLE IF NOT EXISTS `albums_stock` (
  `album_id` int(9) NOT NULL,
  `album_stock` smallint(3) DEFAULT '0',
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fb_users`
--

CREATE TABLE IF NOT EXISTS `fb_users` (
  `user_id` int(9) NOT NULL,
  `user_fb_uid` bigint(13) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_fb_uid` (`user_fb_uid`),
  KEY `user_fb_uid_2` (`user_fb_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `genre_id` int(7) NOT NULL AUTO_INCREMENT,
  `genre_parent_id` int(7) NOT NULL DEFAULT '0',
  `genre_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`genre_id`),
  KEY `genre_parent_id` (`genre_parent_id`),
  KEY `genre_name` (`genre_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_parent_id`, `genre_name`) VALUES
(1, 0, 'Alternative'),
(2, 0, 'Blues'),
(3, 0, 'Soundtracks'),
(4, 0, 'Classical'),
(5, 0, 'Country'),
(6, 0, 'Dance'),
(7, 0, 'Heavy Metal'),
(8, 0, 'Jazz'),
(9, 0, 'Rock-Pop'),
(10, 6, 'Electropop'),
(11, 6, 'Dubstep'),
(12, 6, 'Techno');

-- --------------------------------------------------------

--
-- Table structure for table `genres_to_albums`
--

CREATE TABLE IF NOT EXISTS `genres_to_albums` (
  `album_id` int(9) NOT NULL,
  `genre_id` int(7) NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `genre_id` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres_to_albums`
--

INSERT INTO `genres_to_albums` (`album_id`, `genre_id`) VALUES
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(6, 7),
(32, 8),
(33, 8),
(34, 8),
(35, 8),
(36, 8),
(47, 9),
(48, 9),
(49, 9),
(50, 9),
(51, 9),
(52, 10),
(53, 10),
(54, 10),
(55, 10),
(56, 10),
(57, 11),
(58, 11),
(59, 11),
(60, 11),
(61, 11),
(37, 12),
(38, 12),
(39, 12),
(40, 12),
(41, 12);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `image_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=170 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `image_path`, `image_title`) VALUES
(1, '..\\Musicstore\\CoverArt\\paranoid.jpg', 'Cover Art'),
(2, '..\\Musicstore\\CoverArt\\masterofpuppets.jpg', 'Cover Art'),
(3, '..\\Musicstore\\CoverArt\\thenumberofthebeast.jpg', 'Cover Art'),
(4, '..\\Musicstore\\CoverArt\\blacksabbath.jpg', 'Cover Art'),
(5, '..\\Musicstore\\CoverArt\\reigninblood.jpg', 'Cover Art'),
(6, '..\\Musicstore\\CoverArt\\blizzardofozz.jpg', 'Cover Art'),
(7, '..\\Musicstore\\CoverArt\\westsidesoul.jpg', 'Cover Art'),
(8, '..\\Musicstore\\CoverArt\\songsfordistinguelovers.jpg', 'Cover Art'),
(9, '..\\Musicstore\\CoverArt\\1928sessions.jpg', 'Cover Art'),
(10, '..\\Musicstore\\CoverArt\\bessiesmiththecompleterecordings.jpg', 'Cover Art'),
(11, '..\\Musicstore\\CoverArt\\harlemstreetsinger.jpg', 'Cover Art'),
(12, '..\\Musicstore\\CoverArt\\troubleinmind.jpg', 'Cover Art'),
(13, '..\\Musicstore\\CoverArt\\bornunderabadsign.jpg', 'Cover Art'),
(14, '..\\Musicstore\\CoverArt\\TexaSharecropperandSongster.jpg', 'Cover Art'),
(15, '..\\Musicstore\\CoverArt\\thestoneroses.jpg', 'Cover Art'),
(16, '..\\Musicstore\\CoverArt\\daydreamnation.jpg', 'Cover Art'),
(17, '..\\Musicstore\\CoverArt\\nevermind.jpg', 'Cover Art'),
(18, '..\\Musicstore\\CoverArt\\okcomputer.jpg', 'Cover Art'),
(19, '..\\Musicstore\\CoverArt\\inutero.jpg', 'Cover Art'),
(20, '..\\Musicstore\\CoverArt\\SiameseDream.jpg', 'Cover Art'),
(21, '..\\Musicstore\\CoverArt\\derringdesnibelungen.jpg', 'Cover Art'),
(22, '..\\Musicstore\\CoverArt\\sympno57.jpg', 'Cover Art'),
(23, '..\\Musicstore\\CoverArt\\bethlate.jpg', 'Cover Art'),
(24, '..\\Musicstore\\CoverArt\\chopinetc.jpg', 'Cover Art'),
(25, '..\\Musicstore\\CoverArt\\mozartcomplete.jpg', 'Cover Art'),
(26, '..\\Musicstore\\CoverArt\\folsomprison.jpg', 'Cover Art'),
(27, '..\\Musicstore\\CoverArt\\gunfighter.jpg', 'Cover Art'),
(28, '..\\Musicstore\\CoverArt\\nofences.jpg', 'Cover Art'),
(29, '..\\Musicstore\\CoverArt\\peoplertalking.jpg', 'Cover Art'),
(30, '..\\Musicstore\\CoverArt\\lylelovett.jpg', 'Cover Art'),
(31, '..\\Musicstore\\CoverArt\\americansaturdaynight.jpg', 'Cover Art'),
(32, '..\\Musicstore\\CoverArt\\MilesDavisKindofBlue.jpg', 'Cover Art'),
(33, '..\\Musicstore\\CoverArt\\alovesupreme.jpg', 'Cover Art'),
(34, '..\\Musicstore\\CoverArt\\timeout.jpg', 'Cover Art'),
(35, '..\\Musicstore\\CoverArt\\mingusahhum.jpg', 'Cover Art'),
(36, '..\\Musicstore\\CoverArt\\shapeofjazz.jpg', 'Cover Art'),
(37, '..\\Musicstore\\CoverArt\\dubnobasswithmyheadman.jpg', 'Cover Art'),
(38, '..\\Musicstore\\CoverArt\\homework.jpg', 'Cover Art'),
(39, '..\\Musicstore\\CoverArt\\mobyplay.jpg', 'Cover Art'),
(40, '..\\Musicstore\\CoverArt\\leftism.jpg', 'Cover Art'),
(41, '..\\Musicstore\\CoverArt\\Six_wheels_on_my_wagon.jpg', 'Cover Art'),
(42, '..\\Musicstore\\CoverArt\\trainspotting.jpg', 'Cover Art'),
(43, '..\\Musicstore\\CoverArt\\pulpfiction.jpg', 'Cover Art'),
(44, '..\\Musicstore\\CoverArt\\prettyinpink.jpg', 'Cover Art'),
(45, '..\\Musicstore\\CoverArt\\Catchingfiresoundtrack.jpg', 'Cover Art'),
(46, '..\\Musicstore\\CoverArt\\guardiansofthegalaxy.jpg', 'Cover Art'),
(47, '..\\Musicstore\\CoverArt\\AM.jpg', 'Cover Art'),
(48, '..\\Musicstore\\CoverArt\\ziggystardust.jpg', 'Cover Art'),
(49, '..\\Musicstore\\CoverArt\\contra.jpg', 'Cover Art'),
(50, '..\\Musicstore\\CoverArt\\hotfuss.jpg', 'Cover Art'),
(51, '..\\Musicstore\\CoverArt\\ultraviolence.jpg', 'Cover Art'),
(52, '..\\Musicstore\\CoverArt\\giveup.jpg', 'Cover Art'),
(53, '..\\Musicstore\\CoverArt\\Oracular_Spectacular_2008.jpg', 'Cover Art'),
(54, '..\\Musicstore\\CoverArt\\arular.jpg', 'Cover Art'),
(55, '..\\Musicstore\\CoverArt\\1000forms.jpg', 'Cover Art'),
(56, '..\\Musicstore\\CoverArt\\36804-every-open-eye.jpg', 'Cover Art'),
(57, '..\\Musicstore\\CoverArt\\burial.jpg', 'Cover Art'),
(58, '..\\Musicstore\\CoverArt\\bangarang.jpg', 'Cover Art'),
(59, '..\\Musicstore\\CoverArt\\the-bug-london-zoo-2008.jpg', 'Cover Art'),
(60, '..\\Musicstore\\CoverArt\\demons.jpg', 'Cover Art'),
(61, '..\\Musicstore\\CoverArt\\boxcutter.jpg', 'Cover Art'),
(62, '..\\Musicstore\\CoverArt\\paranoid2.jpg', 'Paranoid'),
(63, '..\\Musicstore\\CoverArt\\paranoid3.jpg', 'Paranoid'),
(64, '..\\Musicstore\\CoverArt\\paranoid4.jpg', 'Paranoid'),
(65, '..\\Musicstore\\CoverArt\\masterofpuppets2.jpg', 'Master of Puppets'),
(66, '..\\Musicstore\\CoverArt\\masterofpuppets3.jpg', 'Master of Puppets'),
(67, '..\\Musicstore\\CoverArt\\masterofpuppets4.jpg', 'Master of Puppets'),
(68, '..\\Musicstore\\CoverArt\\thenumberofthebeast2.jpg', 'The Number Of The Beast'),
(69, '..\\Musicstore\\CoverArt\\thenumberofthebeast3.jpg', 'The Number Of The Beast'),
(70, '..\\Musicstore\\CoverArt\\thenumberofthebeast4.jpg', 'The Number Of The Beast'),
(71, '..\\Musicstore\\CoverArt\\blacksabbath2.jpg', 'Black Sabbath'),
(72, '..\\Musicstore\\CoverArt\\blacksabbath3.jpg', 'Black Sabbath'),
(73, '..\\Musicstore\\CoverArt\\blacksabbath4.jpg', 'Black Sabbath'),
(74, '..\\Musicstore\\CoverArt\\reigninblood2.jpg', 'Reign in Blood'),
(75, '..\\Musicstore\\CoverArt\\reigninblood3.jpg', 'Reign in Blood'),
(76, '..\\Musicstore\\CoverArt\\reigninblood4.jpg', 'Reign in Blood'),
(77, '..\\Musicstore\\CoverArt\\blizzardofozz2.jpg', 'Blizzard of Ozz'),
(78, '..\\Musicstore\\CoverArt\\blizzardofozz3.jpg', 'Blizzard of Ozz'),
(79, '..\\Musicstore\\CoverArt\\blizzardofozz4.jpg', 'Blizzard of Ozz'),
(80, '..\\Musicstore\\CoverArt\\westsidesoul2.jpg', 'West Side Soul Magic'),
(81, '..\\Musicstore\\CoverArt\\westsidesoul3.jpg', 'West Side Soul Magic'),
(82, '..\\Musicstore\\CoverArt\\westsidesoul4.jpg', 'West Side Soul Magic'),
(83, '..\\Musicstore\\CoverArt\\songsfordistinguelovers2.jpg', 'Songs For Distingue Lovers'),
(84, '..\\Musicstore\\CoverArt\\songsfordistinguelovers3.jpg', 'Songs For Distingue Lovers'),
(85, '..\\Musicstore\\CoverArt\\songsfordistinguelovers4.jpg', 'Songs For Distingue Lovers'),
(86, '..\\Musicstore\\CoverArt\\1928sessions2.jpg', '1928 Sessions'),
(87, '..\\Musicstore\\CoverArt\\1928sessions3.jpg', '1928 Sessions'),
(88, '..\\Musicstore\\CoverArt\\1928sessions4.jpg', '1928 Sessions'),
(89, '..\\Musicstore\\CoverArt\\bessiesmiththecompleterecordings2.jpg', 'Bessie Smith'),
(90, '..\\Musicstore\\CoverArt\\bessiesmiththecompleterecordings3.jpg', 'Bessie Smith'),
(91, '..\\Musicstore\\CoverArt\\bessiesmiththecompleterecordings4.jpg', 'Bessie Smith'),
(92, '..\\Musicstore\\CoverArt\\harlemstreetsinger2.jpg', 'Harlem Street Singer'),
(93, '..\\Musicstore\\CoverArt\\harlemstreetsinger3.jpg', 'Harlem Street Singer'),
(94, '..\\Musicstore\\CoverArt\\harlemstreetsinger4.jpg', 'Trouble In Mind'),
(95, '..\\Musicstore\\CoverArt\\troubleinmind2.jpg', 'Trouble In Mind'),
(96, '..\\Musicstore\\CoverArt\\troubleinmind3.jpg', 'Trouble In Mind'),
(97, '..\\Musicstore\\CoverArt\\troubleinmind4.jpg', 'Trouble In Mind'),
(98, '..\\Musicstore\\CoverArt\\bornunderabadsign2.jpg', 'Born Under A Bad Sign'),
(99, '..\\Musicstore\\CoverArt\\bornunderabadsign3.jpg', 'Born Under A Bad Sign'),
(100, '..\\Musicstore\\CoverArt\\bornunderabadsign4.jpg', 'Born Under A Bad Sign'),
(101, '..\\Musicstore\\CoverArt\\TexaSharecropperandSongster2.jpg', 'Texas Sharecropper & Songster'),
(102, '..\\Musicstore\\CoverArt\\TexaSharecropperandSongster3.jpg', 'Texas Sharecropper & Songster'),
(103, '..\\Musicstore\\CoverArt\\TexaSharecropperandSongster4.jpg', 'Texas Sharecropper & Songster'),
(104, '..\\Musicstore\\CoverArt\\thestoneroses2.jpg', 'The Stone Roses'),
(105, '..\\Musicstore\\CoverArt\\thestoneroses3.jpg', 'The Stone Roses'),
(106, '..\\Musicstore\\CoverArt\\thestoneroses4.jpg', 'The Stone Roses'),
(107, '..\\Musicstore\\CoverArt\\daydreamnation2.jpg', 'Daydream Nation'),
(108, '..\\Musicstore\\CoverArt\\daydreamnation3.jpg', 'Daydream Nation'),
(109, '..\\Musicstore\\CoverArt\\daydreamnation4.jpg', 'Daydream Nation'),
(110, '..\\Musicstore\\CoverArt\\nevermind2.jpg', 'Nevermind'),
(111, '..\\Musicstore\\CoverArt\\nevermind3.jpg', 'Nevermind'),
(112, '..\\Musicstore\\CoverArt\\nevermind4.jpg', 'Nevermind'),
(113, '..\\Musicstore\\CoverArt\\okcomputer2.jpg', 'OK Computer'),
(114, '..\\Musicstore\\CoverArt\\okcomputer3.jpg', 'OK Computer'),
(115, '..\\Musicstore\\CoverArt\\okcomputer4.jpg', 'OK Computer'),
(116, '..\\Musicstore\\CoverArt\\inutero2.jpg', 'In Utero'),
(117, '..\\Musicstore\\CoverArt\\inutero3.jpg', 'In Utero'),
(118, '..\\Musicstore\\CoverArt\\inutero4.jpg', 'In Utero'),
(119, '..\\Musicstore\\CoverArt\\SiameseDream2.jpg', 'Siamese Dream'),
(120, '..\\Musicstore\\CoverArt\\SiameseDream3.jpg', 'Siamese Dream'),
(121, '..\\Musicstore\\CoverArt\\SiameseDream4.jpg', 'Siamese Dream'),
(122, '..\\Musicstore\\CoverArt\\derringdesnibelungen2.jpg', 'Der Ring des Nibelungen'),
(123, '..\\Musicstore\\CoverArt\\derringdesnibelungen3.jpg', 'Der Ring des Nibelungen'),
(124, '..\\Musicstore\\CoverArt\\derringdesnibelungen4.jpg', 'Der Ring des Nibelungen'),
(125, '..\\Musicstore\\CoverArt\\sympno572.jpg', 'Symphonies Nos. 5 & 7'),
(126, '..\\Musicstore\\CoverArt\\sympno573.jpg', 'Symphonies Nos. 5 & 7'),
(127, '..\\Musicstore\\CoverArt\\sympno574.jpg', 'Symphonies Nos. 5 & 7'),
(128, '..\\Musicstore\\CoverArt\\bethlate2.jpg', 'Late String Quartets'),
(129, '..\\Musicstore\\CoverArt\\bethlate3.jpg', 'Late String Quartets'),
(130, '..\\Musicstore\\CoverArt\\bethlate4.jpg', 'Late String Quartets'),
(131, '..\\Musicstore\\CoverArt\\chopinetc2.jpg', 'Sonata No. 3 etc'),
(132, '..\\Musicstore\\CoverArt\\chopinetc3.jpg', 'Sonata No. 3 etc'),
(133, '..\\Musicstore\\CoverArt\\chopinetc4.jpg', 'Sonata No. 3 etc'),
(134, '..\\Musicstore\\CoverArt\\mozartcomplete2.jpg', 'Complete Piano Concertos'),
(135, '..\\Musicstore\\CoverArt\\mozartcomplete3.jpg', 'Complete Piano Concertos'),
(136, '..\\Musicstore\\CoverArt\\mozartcomplete4.jpg', 'Complete Piano Concertos'),
(137, '..\\Musicstore\\CoverArt\\folsomprison2.jpg', 'Johnny Cash At Folsom Prison'),
(138, '..\\Musicstore\\CoverArt\\folsomprison3.jpg', 'Johnny Cash At Folsom Prison'),
(139, '..\\Musicstore\\CoverArt\\folsomprison4.jpg', 'Johnny Cash At Folsom Prison'),
(140, '..\\Musicstore\\CoverArt\\gunfighter2.jpg', 'Gunfighter Ballads and Trail Songs'),
(141, '..\\Musicstore\\CoverArt\\gunfighter3.jpg', 'Gunfighter Ballads and Trail Songs'),
(142, '..\\Musicstore\\CoverArt\\gunfighter4.jpg', 'Gunfighter Ballads and Trail Songs'),
(143, '..\\Musicstore\\CoverArt\\nofences2.jpg', 'No Fences'),
(144, '..\\Musicstore\\CoverArt\\nofences3.jpg', 'No Fences'),
(145, '..\\Musicstore\\CoverArt\\nofences4.jpg', 'No Fences'),
(146, '..\\Musicstore\\CoverArt\\peoplertalking2.jpg', 'All the People Are Talkin'),
(147, '..\\Musicstore\\CoverArt\\peoplertalking3.jpg', 'All the People Are Talkin'),
(148, '..\\Musicstore\\CoverArt\\peoplertalking4.jpg', 'All the People Are Talkin'),
(149, '..\\Musicstore\\CoverArt\\lylelovett2.jpg', 'Lyle Lovett'),
(150, '..\\Musicstore\\CoverArt\\lylelovett3.jpg', 'Lyle Lovett'),
(151, '..\\Musicstore\\CoverArt\\lylelovett4.jpg', 'Lyle Lovett'),
(152, '..\\Musicstore\\CoverArt\\americansaturdaynight2.jpg', 'American Saturday Night'),
(153, '..\\Musicstore\\CoverArt\\americansaturdaynight3.jpg', 'American Saturday Night'),
(154, '..\\Musicstore\\CoverArt\\americansaturdaynight4.jpg', 'American Saturday Night'),
(155, '..\\Musicstore\\CoverArt\\MilesDavisKindofBlue2.jpg', 'Kind of Blue'),
(156, '..\\Musicstore\\CoverArt\\MilesDavisKindofBlue3.jpg', 'Kind of Blue'),
(157, '..\\Musicstore\\CoverArt\\MilesDavisKindofBlue4.jpg', 'Kind of Blue'),
(158, '..\\Musicstore\\CoverArt\\alovesupreme2.jpg', 'A Love Supreme'),
(159, '..\\Musicstore\\CoverArt\\alovesupreme3.jpg', 'A Love Supreme'),
(160, '..\\Musicstore\\CoverArt\\alovesupreme4.jpg', 'A Love Supreme'),
(161, '..\\Musicstore\\CoverArt\\timeout2.jpg', 'Time Out'),
(162, '..\\Musicstore\\CoverArt\\timeout3.jpg', 'Time Out'),
(163, '..\\Musicstore\\CoverArt\\timeout4.jpg', 'Time Out'),
(164, '..\\Musicstore\\CoverArt\\mingusahhum2.jpg', 'Mingus Ah Um'),
(165, '..\\Musicstore\\CoverArt\\mingusahhum3.jpg', 'Mingus Ah Um'),
(166, '..\\Musicstore\\CoverArt\\mingusahhum4.jpg', 'Mingus Ah Um'),
(167, '..\\Musicstore\\CoverArt\\shapeofjazz2.jpg', 'The Shape of Jazz to Come'),
(168, '..\\Musicstore\\CoverArt\\shapeofjazz3.jpg', 'The Shape of Jazz to Come'),
(169, '..\\Musicstore\\CoverArt\\shapeofjazz4.jpg', 'The Shape of Jazz to Come');

-- --------------------------------------------------------

--
-- Table structure for table `images_to_albums`
--

CREATE TABLE IF NOT EXISTS `images_to_albums` (
  `image_id` bigint(12) NOT NULL,
  `album_id` int(9) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `album_id` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images_to_albums`
--

INSERT INTO `images_to_albums` (`image_id`, `album_id`) VALUES
(1, 1),
(62, 1),
(63, 1),
(64, 1),
(2, 2),
(65, 2),
(66, 2),
(67, 2),
(3, 3),
(68, 3),
(69, 3),
(70, 3),
(4, 4),
(71, 4),
(72, 4),
(73, 4),
(5, 5),
(74, 5),
(75, 5),
(76, 5),
(6, 6),
(77, 6),
(78, 6),
(79, 6),
(7, 7),
(80, 7),
(81, 7),
(82, 7),
(8, 8),
(83, 8),
(84, 8),
(85, 8),
(9, 9),
(86, 9),
(87, 9),
(88, 9),
(10, 10),
(89, 10),
(90, 10),
(91, 10),
(11, 11),
(92, 11),
(93, 11),
(94, 11),
(12, 12),
(95, 12),
(96, 12),
(97, 12),
(13, 13),
(98, 13),
(99, 13),
(100, 13),
(14, 14),
(101, 14),
(102, 14),
(103, 14),
(15, 15),
(104, 15),
(105, 15),
(106, 15),
(16, 16),
(107, 16),
(108, 16),
(109, 16),
(17, 17),
(110, 17),
(111, 17),
(112, 17),
(18, 18),
(113, 18),
(114, 18),
(115, 18),
(19, 19),
(116, 19),
(117, 19),
(118, 19),
(20, 20),
(119, 20),
(120, 20),
(121, 20),
(21, 21),
(122, 21),
(123, 21),
(124, 21),
(22, 22),
(125, 22),
(126, 22),
(127, 22),
(23, 23),
(128, 23),
(129, 23),
(130, 23),
(24, 24),
(131, 24),
(132, 24),
(133, 24),
(25, 25),
(134, 25),
(135, 25),
(136, 25),
(26, 26),
(137, 26),
(138, 26),
(139, 26),
(27, 27),
(140, 27),
(141, 27),
(142, 27),
(28, 28),
(143, 28),
(144, 28),
(145, 28),
(29, 29),
(146, 29),
(147, 29),
(148, 29),
(30, 30),
(149, 30),
(150, 30),
(151, 30),
(31, 31),
(152, 31),
(153, 31),
(154, 31),
(32, 32),
(155, 32),
(156, 32),
(157, 32),
(33, 33),
(158, 33),
(159, 33),
(160, 33),
(34, 34),
(161, 34),
(162, 34),
(163, 34),
(35, 35),
(165, 35),
(166, 35),
(167, 35),
(36, 36),
(168, 36),
(169, 36),
(170, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(9) NOT NULL,
  `order_created` timestamp NOT NULL,
  `order_shipping_address` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `order_shipping_city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order_shipping_zipcode` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `order_shipping_phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `order_payment_method` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `order_total` double NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders_to_albums`
--

CREATE TABLE IF NOT EXISTS `orders_to_albums` (
  `order_id` bigint(12) NOT NULL,
  `album_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `song_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `song_duration` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `song_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `songs_to_albums`
--

CREATE TABLE IF NOT EXISTS `songs_to_albums` (
  `song_id` bigint(12) NOT NULL,
  `album_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_albums`
--

CREATE TABLE IF NOT EXISTS `special_albums` (
  `album_id` int(9) NOT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(9) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`),
  KEY `user_email_2` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
