.class final Lcom/google/android/gms/internal/fitness/zzdd;
.super Lcom/google/android/gms/internal/fitness/zzbs;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/fitness/zzdc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzbs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzdd;->zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/fitness/result/DataTypeResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdd;->zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    return-void
.end method
