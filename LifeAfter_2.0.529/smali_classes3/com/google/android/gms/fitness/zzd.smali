.class public final synthetic Lcom/google/android/gms/fitness/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/fitness/zzd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/zzd;->zza:Lcom/google/android/gms/fitness/zzd;

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

    check-cast p1, Lcom/google/android/gms/fitness/result/DataTypeResult;

    sget v0, Lcom/google/android/gms/fitness/ConfigClient;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/result/DataTypeResult;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    return-object p1
.end method
