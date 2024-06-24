# Azure kinect相机手眼标定步骤

## 1.启动运行环境

```bash
cd catkin_ws/src/k4a_hand_to_eye_calibration/
cd Docker/
bash calibration.sh
```

## 2.启动手眼标定程序

```bash
catkin_make
source devel/setup.bash
roslaunch k4a_hand_to_eye_calibration ur10e_k4a_calibration.launch
```

+ 程序运行后，会开启三个界面：
  1. rviz界面，主要显示tf关系，即可视化各个坐标系之间的位置关系(将world更改为base_link才会正常显示)
  2. 位姿选取界面，随机选取位姿并使机械臂移动至给出位姿点处
  3. 采样界面，通过点击takesample完成采样点采样

+ 由于标定程序无法可视化标定状态，因此可以通过rqt工具订阅easy_auro话题进行可视化。

  ```bash
  # 另开一个终端
  cd catkin_ws
  source devel/setup.bash
  rqt
  ```

  点击Plugin-->Visualization-->Image View，选择/easy_aruco_node/debug_image的话题进行订阅，即可观察到rgb图像，且能检测识别出charuco码的位置。

## 3.开始标定

1. 首先将机器人手动移动到标志码上方，使得标识码位于图像的中心处。

2. 在位姿选取界面点击`Check starting pose` 按钮检查当前机器人位姿是否可以作为初始位置，如果显示不可以，重新移动机器人到合适的位置。

3. 规划：检查完成后，点击`Next Pose`按钮，点击`Plan`按钮，若规划可行，点击`Execute`按钮，机器人移动到规划位置。
4. 采样：机器人移动到规划位置后，在采样界面，点击`Take Sample`按钮。
5. 重复步骤3，4直到获取17个采样点，即可点击`compute`进行计算，得到最终相机坐标系与机械臂基坐标系之间的转换关系。
6. 点击`save`按钮，坐标变换信息将会以文件形式保存至~/.ros/easy_handeye处，可通过命令进行查看。