.class public final synthetic Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$Zxj7vj2VFSzqm5ULSomVu6gUxlM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$Zxj7vj2VFSzqm5ULSomVu6gUxlM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$Zxj7vj2VFSzqm5ULSomVu6gUxlM;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$Zxj7vj2VFSzqm5ULSomVu6gUxlM;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$Zxj7vj2VFSzqm5ULSomVu6gUxlM;->INSTANCE:Lcom/google/firebase/remoteconfig/-$$Lambda$FirebaseRemoteConfig$Zxj7vj2VFSzqm5ULSomVu6gUxlM;

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

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->lambda$setDefaultsWithStringsMapAsync$7(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
