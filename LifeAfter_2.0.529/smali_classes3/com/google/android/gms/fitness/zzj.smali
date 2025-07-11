.class public final synthetic Lcom/google/android/gms/fitness/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/fitness/zzj;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/zzj;->zza:Lcom/google/android/gms/fitness/zzj;

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

    check-cast p1, Lcom/google/android/gms/fitness/result/GoalsResult;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/result/GoalsResult;->getGoals()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
