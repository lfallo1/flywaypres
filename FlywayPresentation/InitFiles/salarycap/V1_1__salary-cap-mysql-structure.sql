DROP TABLE IF EXISTS player;
CREATE TABLE player (
  id int(11) NOT NULL,
  accrued int(11) DEFAULT NULL,
  date_of_birth date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  notes varchar(2000) DEFAULT NULL,
  college varchar(45) DEFAULT NULL,
  draft_pick int(11) DEFAULT NULL,
  draft_round int(11) DEFAULT NULL,
  draft_year int(11) DEFAULT NULL,
  height varchar(15) DEFAULT NULL,
  original_team_id int(11) DEFAULT NULL,
  weight int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  KEY fk_player_team_idx (original_team_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS contract_overview;
CREATE TABLE contract_overview (
  id int(11) NOT NULL,
  player int(11) DEFAULT NULL,
  team int(11) DEFAULT NULL,
  average_per_year double DEFAULT NULL,
  free_agent_year varchar(15) DEFAULT NULL,
  guarantee double DEFAULT NULL,
  position varchar(45) DEFAULT NULL,
  role varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  total double DEFAULT NULL,
  years int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY idcontract_overview_UNIQUE (id),
  KEY fk_contract_overview_idx (player),
  CONSTRAINT fk_contract_overview_player FOREIGN KEY (player) REFERENCES player (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS dead_money;
CREATE TABLE dead_money (
  id int(11) NOT NULL,
  dead_money double DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  player int(11) DEFAULT NULL,
  team int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  KEY fk_dead_money_player_idx (player),
  CONSTRAINT fk_dead_money_player FOREIGN KEY (player) REFERENCES player (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS team;
CREATE TABLE team (
  id int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS yearly_contract;
CREATE TABLE yearly_contract (
  id int(11) NOT NULL,
  player int(11) DEFAULT NULL,
  team int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  base_salary double DEFAULT NULL,
  cap_charge double DEFAULT NULL,
  cap_savings double DEFAULT NULL,
  dead_money double DEFAULT NULL,
  guaranteed_base_salary double DEFAULT NULL,
  notes varchar(1000) DEFAULT NULL,
  option_bonus double DEFAULT NULL,
  signing_bonus double DEFAULT NULL,
  roster_bonus double DEFAULT NULL,
  workout_bonus double DEFAULT NULL,
  team_name varchar(45) DEFAULT NULL,
  role varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  position varchar(45) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  KEY fk_yc_player_idx (player),
  KEY fk_yc_team_idx (team),
  CONSTRAINT fk_yc_player FOREIGN KEY (player) REFERENCES player (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;