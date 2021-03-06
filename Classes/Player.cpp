#include "Player.h"
#include "Define.h"

USING_NS_CC;

Player::Player()
{
	WinSize = Director::getInstance()->getVisibleSize();
	origin = Director::getInstance()->getVisibleOrigin();

	//auto winSize = Director::getInstance()->getVisibleSize();
	//Vec2 origin = Director::getInstance()->getVisibleOrigin();
}

void Player::SetPlayer(cocos2d::Layer *layer)
{
		CCLOG("POWER"); //COCOS BUG: WONT ALWAYS SHOW IN OUTPUT
		paddle = Sprite::create("Paddle.png"); // May not need the auto
		auto paddleBounding = PhysicsBody::createBox(paddle->getContentSize());// CHANGE TO CIRCLE PhysicsShapeCircle
		paddleBounding->setDynamic(false);
		paddleBounding->setGravityEnable(false);
		paddleBounding->setContactTestBitmask(Paddle_Bitmask);
		paddleBounding->setCollisionBitmask(Paddle_Bitmask);
		paddle->setPhysicsBody(paddleBounding); //sets a bounding box around brick.
		SetPlayerPos(WinSize.width / 2, WinSize.height / 6);
		layer->addChild(paddle,1);
		paddle->setTag(1);
}

void Player::SetPlayerPos(float x, float y)
{
	paddle->setPosition(x, y);
}

float Player::GetPlayerPosX()
{
	return paddle->getPositionX();
}
