.class public final synthetic Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$DICvvb4p9F-D-GB0VOb0xHLqgDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$DICvvb4p9F-D-GB0VOb0xHLqgDE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$DICvvb4p9F-D-GB0VOb0xHLqgDE;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$DICvvb4p9F-D-GB0VOb0xHLqgDE;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$DICvvb4p9F-D-GB0VOb0xHLqgDE;->INSTANCE:Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$DICvvb4p9F-D-GB0VOb0xHLqgDE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->lambda$fetch$3(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
