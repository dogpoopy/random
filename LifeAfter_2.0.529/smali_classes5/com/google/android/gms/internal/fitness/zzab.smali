.class public final Lcom/google/android/gms/internal/fitness/zzab;
.super Lcom/google/android/gms/internal/fitness/zze;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final zze:Lcom/google/android/gms/common/api/Api$ClientKey;

.field public static final zzf:Lcom/google/android/gms/common/api/Api;

.field public static final zzg:Lcom/google/android/gms/common/api/Api;

.field public static final zzh:I = 0x7f


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzab;->zze:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lcom/google/android/gms/internal/fitness/zzw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fitness/zzw;-><init>(Lcom/google/android/gms/internal/fitness/zzv;)V

    const-string v4, "Fitness.GOALS_API"

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/internal/fitness/zzab;->zzf:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lcom/google/android/gms/internal/fitness/zzz;

    .line 3
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fitness/zzz;-><init>(Lcom/google/android/gms/internal/fitness/zzy;)V

    const-string v3, "Fitness.GOALS_CLIENT"

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/internal/fitness/zzab;->zzg:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/internal/fitness/zzaa;)V
    .locals 7

    .line 1
    sget v3, Lcom/google/android/gms/internal/fitness/zzab;->zzh:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fitness/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/ClientSettings;)V

    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitGoalsApi"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/fitness/zzbz;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbz;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzbz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fitness/zzbz;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitGoalsApi"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.fitness.GoalsApi"

    return-object v0
.end method
