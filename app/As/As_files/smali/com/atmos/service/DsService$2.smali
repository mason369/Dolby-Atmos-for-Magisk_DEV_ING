.class Lcom/atmos/service/DsService$2;
.super Landroid/content/BroadcastReceiver;
.source "DsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/service/DsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/service/DsService;


# direct methods
.method constructor <init>(Lcom/atmos/service/DsService;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 213
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "action":Ljava/lang/String;
    const-string v1, "cmd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, "cmd":Ljava/lang/String;
    const-string v1, "widget class"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 216
    .local v17, "name":Ljava/lang/String;
    const-string v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intentReceiver_.onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 221
    const-string v1, "DsService"

    const-string v2, "Save DS state and current settings before shutting down..."

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/atmos/ds/DsManager;->saveDsStateAndSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v8    # "action":Ljava/lang/String;
    .end local v10    # "cmd":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    return-void

    .line 224
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v10    # "cmd":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v1, "media_server_started"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    .line 227
    const-string v1, "DsService"

    const-string v2, "DS effect recreate successfully"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 320
    .end local v8    # "action":Ljava/lang/String;
    .end local v10    # "cmd":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 322
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "DsService"

    const-string v2, "Exception found in DsService::onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 230
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v10    # "cmd":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DOLBY_DEVICE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    const-string v1, "Device"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    const-string v1, "Device"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 235
    .local v11, "device":I
    const-string v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Changed, New Device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v11    # "device":I
    :cond_4
    const-string v1, "DeviceUniqueId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const-string v1, "DeviceUniqueId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 240
    .local v12, "deviceName":Ljava/lang/String;
    const-string v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device unique id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    .end local v12    # "deviceName":Ljava/lang/String;
    :cond_5
    const-string v1, "DS_EFFECT_SUSPEND_ACTION"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 247
    const-string v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DS_EFFECT_SUSPEND_ACTION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/atmos/service/DsService$2;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/service/DsService$2;->getResultCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 268
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/atmos/ds/DsManager;->setDsSuspended(Z)V

    .line 269
    const-string v1, "DsService"

    const-string v2, "DS_EFFECT_UNSUSPENDED"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/atmos/service/DsService;->access$400(Lcom/atmos/service/DsService;IZ)I

    goto/16 :goto_0

    .line 254
    :pswitch_1
    invoke-static {}, Lcom/atmos/ds/DsProperty;->getStateProperty()Ljava/lang/String;

    move-result-object v13

    .line 255
    .local v13, "dsState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/atmos/ds/DsManager;->setDsSuspended(Z)V

    .line 256
    const-string v1, "DsService"

    const-string v2, "DS_EFFECT_SUSPENDED"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    const-string v1, "on"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "off"

    invoke-static {v1}, Lcom/atmos/ds/DsProperty;->setStateProperty(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/atmos/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 279
    .end local v13    # "dsState":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DS_AUDIO_FOCUS_CHANGE_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 281
    const-string v1, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const-string v1, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 284
    .local v18, "packageName":Ljava/lang/String;
    const-string v1, "focusChange"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    const-string v1, "focusChange"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 287
    .local v15, "focusChange":Ljava/lang/String;
    const-string v1, "loss"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "abandon"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 289
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/atmos/service/DsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 290
    .local v9, "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/media/AudioManager;->isAppInFocus(Ljava/lang/String;)Z

    move-result v16

    .line 291
    .local v16, "isFocused":Z
    if-nez v16, :cond_1

    .line 293
    const-string v1, "abandon"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 295
    const-string v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DsService,The application named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has abandoned its audio focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Lcom/atmos/service/DsAccessRightManager;->doAccessForAudioFocusChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 300
    :cond_8
    const-string v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DsService,The application named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has lost its audio focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Lcom/atmos/service/DsAccessRightManager;->doAccessForAudioFocusChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 305
    .end local v9    # "audioManager":Landroid/media/AudioManager;
    .end local v16    # "isFocused":Z
    :cond_9
    const-string v1, "gain"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const-string v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DsService,The application named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has gained its audio focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Lcom/atmos/service/DsAccessRightManager;->doAccessForAudioFocusChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 314
    .end local v15    # "focusChange":Ljava/lang/String;
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_a
    const-string v1, "com.atmos.ds1appUI.SET_PROFILE_TYPE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    const-string v1, "PROFILE_TYPE"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 316
    .local v19, "type":I
    const-string v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intentReceiver_.onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " profile is----> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/atmos/service/DsService$2;->this$0:Lcom/atmos/service/DsService;

    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-static {v1, v2, v0}, Lcom/atmos/service/DsService;->access$600(Lcom/atmos/service/DsService;II)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
