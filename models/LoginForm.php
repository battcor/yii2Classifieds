<?php

namespace app\models;

use Yii;
use yii\base\Model;

/**
 * LoginForm is the model behind the login form.
 */
class LoginForm extends Model {

    public $username;
    public $password;
    public $rememberMe = true;
    private $_user = false;

    /**
     * @return array the validation rules.
     */
    public function rules() {
        return [
            // username and password are both required
            [['username', 'password'], 'required'],
            // rememberMe must be a boolean value
            ['rememberMe', 'boolean'],
            // password is validated by validatePassword()
            ['password', 'validatePassword'],
        ];
    }

    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     */
    public function validatePassword($attribute, $params) {
        if (!$this->hasErrors()) {
            if (!$this->_user) {
//                $user = new User;
//                $user->username = $this->username;
//                $user->password = Yii::$app->security->generatePasswordHash($this->password);
//                $user->authKey = Yii::$app->security->generateRandomKey();
//                $user->accessToken = Yii::$app->security->generateRandomString();
//                $user->save();

                $this->_user = User::findByUsername($this->username);
            }

            if (!$this->_user || !$this->_user->validatePassword($this->password)) {
                $this->addError($attribute, 'Incorrect username or password.');
            }
        }
    }

    /**
     * Logs in a user using the provided username and password.
     * @return boolean whether the user is logged in successfully
     */
    public function login() {
        if ($this->validate()) {
            return Yii::$app->user->login($this->_user, $this->rememberMe ? 3600 * 24 * 30 : 0);
        }
        return false;
    }
}