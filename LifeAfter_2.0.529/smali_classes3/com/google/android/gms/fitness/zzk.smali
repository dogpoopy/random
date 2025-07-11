.class public final synthetic Lcom/google/android/gms/fitness/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/fitness/zzk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/zzk;->zza:Lcom/google/android/gms/fitness/zzk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/result/DailyTotalResult;

    sget v0, Lcom/google/android/gms/fitness/HistoryClient;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/result/DailyTotalResult;->getTotal()Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataSet;

    return-object p1
.end method
