.class public final synthetic Lcom/google/android/gms/fitness/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/fitness/zzq;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/zzq;->zza:Lcom/google/android/gms/fitness/zzq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/result/SessionStopResult;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/result/SessionStopResult;->getSessions()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
