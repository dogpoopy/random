.class Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;
.super Ljava/lang/Object;
.source "SdkFirebaseAnalytics.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkFirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$002(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;Z)Z

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$000(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Z

    move-result v0

    const-string v1, "SdkFirebaseAnalytics"

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config params updated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {v2}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$100(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$100(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$100(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Fetch failed"

    .line 118
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$200(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$300(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 123
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$300(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$100(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$400(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 124
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$300(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "respCode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$300(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "respMsg"

    const-string v2, "succ"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$300(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->extendFuncCall(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$302(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$1;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$202(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;Z)Z

    return-void
.end method
