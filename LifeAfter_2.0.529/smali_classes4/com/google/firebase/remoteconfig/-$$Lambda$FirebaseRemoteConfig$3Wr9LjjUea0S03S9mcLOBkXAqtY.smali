.class public final synthetic Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$3Wr9LjjUea0S03S9mcLOBkXAqtY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

.field public final synthetic f$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$3Wr9LjjUea0S03S9mcLOBkXAqtY;->f$0:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$3Wr9LjjUea0S03S9mcLOBkXAqtY;->f$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$3Wr9LjjUea0S03S9mcLOBkXAqtY;->f$0:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$3Wr9LjjUea0S03S9mcLOBkXAqtY;->f$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->lambda$setConfigSettingsAsync$5$FirebaseRemoteConfig(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
