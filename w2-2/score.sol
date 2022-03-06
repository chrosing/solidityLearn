//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IScoreService {
    function addScore(uint256 amount) external;

    function subScore(uint256 amount) external;
}

contract ScoreService {
    mapping(address => uint256) score;
    address teacher;

    constructor() {
        teacher = address(new Teacher(address(this)));
    }

    modifier _onlyTeacher() {
        require(msg.sender == teacher, "Score: not teacher");
        _;
    }

    function addScore(uint256 amount) external _onlyTeacher {
        require(score[msg.sender] + amount <= 100, "Score: add too much");
        score[msg.sender] += amount;
    }

    function subScore(uint256 amount) external _onlyTeacher {
        score[msg.sender] -= amount;
    }
}

contract Teacher {
    IScoreService scoreService;

    constructor(address _score) {
        scoreService = IScoreService(_score);
    }

    function addScore(uint256 amount) external {
        scoreService.addScore(amount);
    }

    function subScore(uint256 amount) external {
        scoreService.subScore(amount);
    }
}