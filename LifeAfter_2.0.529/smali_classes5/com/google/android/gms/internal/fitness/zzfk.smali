.class final Lcom/google/android/gms/internal/fitness/zzfk;
.super Lcom/google/android/gms/internal/fitness/zzfh;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/fitness/zzfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzfm;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzfm;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/fitness/zzfh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzfk;->zza:Lcom/google/android/gms/internal/fitness/zzfm;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzfk;->zza:Lcom/google/android/gms/internal/fitness/zzfm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fitness/zzfm;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
