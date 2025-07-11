.class public Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;
.super Ljava/lang/Object;
.source "RolloutsStateFactory.java"


# instance fields
.field getParameterHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;->getParameterHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    return-void
.end method

.method public static create(Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;)Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;
    .locals 1

    .line 91
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;)V

    return-object v0
.end method


# virtual methods
.method getActiveRolloutsState(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getRolloutMetadata()Lorg/json/JSONArray;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getTemplateVersionNumber()J

    move-result-wide v1

    .line 50
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 51
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 53
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "rolloutId"

    .line 54
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "affectedParameterKeys"

    .line 55
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 57
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    const-string v8, "FirebaseRemoteConfig"

    const-string v10, "Rollout has multiple affected parameter keys.Only the first key will be included in RolloutsState. rolloutId: %s, affectedParameterKeys: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v3

    aput-object v7, v11, v9

    .line 60
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 58
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v8, ""

    .line 68
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;->getParameterHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    invoke-virtual {v8, v7}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-static {}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment;->builder()Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;

    move-result-object v9

    .line 73
    invoke-virtual {v9, v6}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;->setRolloutId(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;

    move-result-object v6

    const-string v9, "variantId"

    .line 74
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;->setVariantId(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v7}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;->setParameterKey(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;

    move-result-object v5

    .line 76
    invoke-virtual {v5, v8}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;->setParameterValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;

    move-result-object v5

    .line 77
    invoke-virtual {v5, v1, v2}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;->setTemplateVersion(J)Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment$Builder;->build()Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment;

    move-result-object v5

    .line 71
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string v1, "Exception parsing rollouts metadata to create RolloutsState."

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;->create(Ljava/util/Set;)Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;

    move-result-object p1

    return-object p1
.end method
