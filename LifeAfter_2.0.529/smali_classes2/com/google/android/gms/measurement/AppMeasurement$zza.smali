.class abstract Lcom/google/android/gms/measurement/AppMeasurement$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zza"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurement$zza;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zza(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract zzb()Ljava/lang/Boolean;
.end method

.method abstract zzc()Ljava/lang/Double;
.end method

.method abstract zzd()Ljava/lang/Integer;
.end method

.method abstract zze()Ljava/lang/Long;
.end method

.method abstract zzj()Ljava/lang/String;
.end method
