.class Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/api/ModulesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->addModuleCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendFuncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Lifecycle [addModuleCallback] json="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "trace"

    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "methodId"

    .line 82
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x1

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x36151fda

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x33b5621

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "app_foreground"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "life_model"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eq p3, v2, :cond_3

    goto/16 :goto_1

    .line 116
    :cond_3
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    const-string p3, "foreground"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$102(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;Z)Z

    .line 117
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->updateDiInfoToLocalFile()V

    .line 118
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-static {p2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$100(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isAppForeground(Z)V

    goto/16 :goto_1

    :cond_4
    const-string p2, "life_model_int"

    .line 85
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "life_act"

    .line 86
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 111
    :pswitch_0
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-static {p2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$000(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    const-string v1, "onSaveInstance"

    invoke-direct {v0, p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 108
    :pswitch_1
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-static {p2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$000(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    const-string v1, "onPause"

    invoke-direct {v0, p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 105
    :pswitch_2
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-static {p2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$000(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    const-string v1, "onResume"

    invoke-direct {v0, p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 101
    :pswitch_3
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-static {p2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$000(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    const-string v1, "onDestroy"

    invoke-direct {v0, p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->onActivityDestroy()V

    goto :goto_1

    .line 97
    :pswitch_4
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-static {p2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$000(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    const-string v1, "onStop"

    invoke-direct {v0, p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->onActivityStop()V

    goto :goto_1

    .line 93
    :pswitch_5
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-static {p2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$000(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    const-string v1, "onStart"

    invoke-direct {v0, p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->onActivityStart()V

    goto :goto_1

    .line 89
    :pswitch_6
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-static {p2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->access$000(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    const-string v1, "onCreate"

    invoke-direct {v0, p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->onActivityCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
