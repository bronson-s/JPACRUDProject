-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema booksdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `booksdb` ;

-- -----------------------------------------------------
-- Schema booksdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `booksdb` DEFAULT CHARACTER SET utf8 ;
USE `booksdb` ;

-- -----------------------------------------------------
-- Table `book`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `book` ;

CREATE TABLE IF NOT EXISTS `book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(500) NOT NULL,
  `author` VARCHAR(500) NOT NULL,
  `year_published` YEAR NOT NULL,
  `page_count` INT NOT NULL,
  `publisher` VARCHAR(500) NULL,
  `description` VARCHAR(5000) NULL,
  `purchase_price` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO books@localhost;
 DROP USER books@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'books'@'localhost' IDENTIFIED BY 'books';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'books'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `book`
-- -----------------------------------------------------
START TRANSACTION;
USE `booksdb`;
INSERT INTO `book` (`id`, `title`, `author`, `year_published`, `page_count`, `publisher`, `description`, `purchase_price`) VALUES (1, 'THE PARASITIC MIND', 'Gad Saad', 2020, 250, 'Regnery Publishing', 'There\'s a war against truth... and if we don\'t win it, intellectual freedom will be a casualty.\n\nThe West’s commitment to freedom, reason, and true liberalism has never been more seriously threatened than it is today by the stifling forces of political correctness.\n\nDr. Gad Saad, the host of the enormously popular YouTube show THE SAAD TRUTH, exposes the bad ideas—what he calls “idea pathogens”—that are killing common sense and rational debate. Incubated in our universities and spread through the tyranny of political correctness, these ideas are endangering our most basic freedoms—including freedom of thought and speech.\n\nThe danger is grave, but as Dr. Saad shows, politically correct dogma is riddled with logical fallacies. We have powerful\nweapons to fight back with—if we have the courage to use them.\n\nA provocative guide to defending reason and intellectual freedom and a battle cry for the preservation of our fundamental rights, The Parasitic Mind will be the most controversial and talked-about book of the year.', 23.39);
INSERT INTO `book` (`id`, `title`, `author`, `year_published`, `page_count`, `publisher`, `description`, `purchase_price`) VALUES (2, 'Faust', 'Geothe', 1952, 293, 'The Encyclopedia Britannica', 'The erudite Faust is highly successful yet dissatisfied with his life, which leads him to make a pact with the Devil at a crossroads, exchanging his soul for unlimited knowledge and worldly pleasures. The Faust legend has been the basis for many literary, artistic, cinematic, and musical works that have reinterpreted it through the ages. \"Faust\" and the adjective \"Faustian\" imply a situation in which an ambitious person surrenders moral integrity in order to achieve power and success for a limited term', NULL);
INSERT INTO `book` (`id`, `title`, `author`, `year_published`, `page_count`, `publisher`, `description`, `purchase_price`) VALUES (3, 'Thus Spoke Zarathrusta', 'Freidrich Nietzsche', 2009, 249, 'Wilder Publications, Thrifty Books', 'Friedrich Nietzsche\'s Thus Spoke Zarathustra, written in the years 1883 to 1885, is a pretty unusual book in the history of Western philosophy. It isn\'t really a novel, it isn\'t really poetry, and it\'s not really a traditional philosophical treatise. Thus Spoke Zarathustra is a philosophical parable that follows the wanderings of a character called Zarathustra, a Nietzschean prophet.\nThus Spoke Zarathustra is filled with irony and no more so than in the naming of its hero, Zarathustra. The historical Zarathustra is believed to be the founder of the ancient monotheistic tradition Zoroastrianism, which articulates a Manichean, good versus evil view of the world. Traditional Zoroastrianism sees good and evil as fundamental aspects of reality, beyond interpretation or human discourse. Nietzsche\'s perspective, and that of his protagonist Zarathustra, is the opposite of Zoroastrianism. This is meant as a kind of ironic joke.\nNietzsche\'s underlying argument is that all human values are created by humans, rather than gods, or nature, or some underlying fundamental reality. Through his proxy, Zarathustra, Nietzsche argues that good and evil are names that we attribute to certain actions, behaviors, or ideas for strategic reasons. Nietzsche envisions humans at their best as creator beings, filling the world around them with values and significance. At their worst, humans are passive, cowardly, conformists attributing all of their historically and culturally specific values to the will of God or some essential nature. As Zarathustra travels, he encounters a few people who are willing to heed his call to empowerment and creativity, but he mainly meets small-minded fools intended to serve as counterexamples for Zarathustra himself.', NULL);
INSERT INTO `book` (`id`, `title`, `author`, `year_published`, `page_count`, `publisher`, `description`, `purchase_price`) VALUES (4, 'The Denial of Death', 'Ernest Becker', 1997, 314, 'FREE PRESS PAPERBACKS', 'Background. The premise of The Denial of Death is that human civilization is ultimately an elaborate, symbolic defense mechanism against the knowledge of our mortality, which in turn acts as the emotional and intellectual response to our basic survival mechanism.', 18.00);
INSERT INTO `book` (`id`, `title`, `author`, `year_published`, `page_count`, `publisher`, `description`, `purchase_price`) VALUES (5, 'Affective Nueroscience: The Foundations of Human and Animal Emotions', 'Jaak Pansksepp', 2005, 466, 'OXFORD University Press', 'Some investigators have argued that emotions, especially animal emotions, are illusory concepts outside the realm of scientific inquiry. However, with advances in neurobiology and neuroscience, researchers are demonstrating that this position is wrong as they move closer to a lasting understanding of the biology and psychology of emotion. In Affective Neuroscience, Jaak Panksepp provides the most up to date information about the brain operating systems that organize the fundamental emotional tendencies of all mammals. Presenting complex material in a readable manner, the book offers a comprehensive summary of the fundamental neural sources of human and animal feelings, as well as a conceptual framework for studying emotional systems of the brain. Panksepp approaches emotions from the perspective of basic emotion theory but does not fail to address the complex issues raised by constructionist approaches. These issues include relations to human consciousness and the psychiatric implications of this knowledge. The book includes chapters on sleep and arousal, pleasure and fear systems, the sources of rage and anger, and the neural control of sexuality, as well as the more subtle emotions related to maternal care, social loss, and playfulness. Representing a synthetic integration of vast amounts of neurobehavioral knowledge, including relevant neuroanatomy, neurophysiology, and neurochemistry, this book will be one of the most important contributions to understanding the biology of emotions since Darwins The Expression of the Emotions in Man and Animals', 45.57);
INSERT INTO `book` (`id`, `title`, `author`, `year_published`, `page_count`, `publisher`, `description`, `purchase_price`) VALUES (6, 'Narcissus and Goldmund', 'Herman Hesse', 1968, 312, 'Farrar, Straus, and Grioux inc.', 'Hesse\'s novel of two medieval men, one quitley content with his religion and monastic life, and the other in a feverent search for more worldy salvation. This conflict between flesh and spirit, between emotional and contemplative man, was a life study for Hesse. It is a theme that trancends all time.', 6.50);
INSERT INTO `book` (`id`, `title`, `author`, `year_published`, `page_count`, `publisher`, `description`, `purchase_price`) VALUES (7, 'Siddhartha', 'Herman Hesse', 2007, 140, 'Barnes and Noble Classics', 'Though set in a place and time far removed from the Germany of 1922, the year of the book’s debut, the novel is infused with the sensibilities of Hermann Hesse’s time, synthesizing disparate philosophies–Eastern religions, Jungian archetypes, Western individualism–into a unique vision of life as expressed through one man’s search for meaning.\n\nIt is the story of the quest of Siddhartha, a wealthy Indian Brahmin who casts off a life of privilege and comfort to seek spiritual fulfillment and wisdom. On his journey, Siddhartha encounters wandering ascetics, Buddhist monks, and successful merchants, as well as a courtesan named Kamala and a simple ferryman who has attained enlightenment. Traveling among these people and experiencing life’s vital passages–love, work, friendship, and fatherhood–Siddhartha discovers that true knowledge is guided from within.', 8.95);

COMMIT;
