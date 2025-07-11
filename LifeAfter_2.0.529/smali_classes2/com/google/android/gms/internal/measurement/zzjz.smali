.class final synthetic Lcom/google/android/gms/internal/measurement/zzjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzky;->values()[Lcom/google/android/gms/internal/measurement/zzky;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:[I

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzky;->zzb:Lcom/google/android/gms/internal/measurement/zzky;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzky;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
