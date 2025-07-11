.class public Lcom/google/android/gms/internal/auth/zzeo;
.super Lcom/google/android/gms/internal/auth/zzdl;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/zzeq<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/auth/zzeo<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/auth/zzdl<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/auth/zzeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/auth/zzeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/auth/zzeq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzdl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzeo;->zzc:Lcom/google/android/gms/internal/auth/zzeq;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/auth/zzeq;->zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzeq;

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzeo;->zza:Lcom/google/android/gms/internal/auth/zzeq;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/auth/zzeo;->zzb:Z

    return-void
.end method

.method private static final zzj(Lcom/google/android/gms/internal/auth/zzeq;Lcom/google/android/gms/internal/auth/zzeq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfy;->zza()Lcom/google/android/gms/internal/auth/zzfy;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzfy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzgb;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzeo;->zzd()Lcom/google/android/gms/internal/auth/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zza()Lcom/google/android/gms/internal/auth/zzdl;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzeo;->zzd()Lcom/google/android/gms/internal/auth/zzeo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic zzb(Lcom/google/android/gms/internal/auth/zzdm;)Lcom/google/android/gms/internal/auth/zzdl;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzeq;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzeo;->zze(Lcom/google/android/gms/internal/auth/zzeq;)Lcom/google/android/gms/internal/auth/zzeo;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/auth/zzeo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zzc:Lcom/google/android/gms/internal/auth/zzeq;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzeq;->zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth/zzeo;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzeo;->zzf()Lcom/google/android/gms/internal/auth/zzeq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzeo;->zze(Lcom/google/android/gms/internal/auth/zzeq;)Lcom/google/android/gms/internal/auth/zzeo;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/auth/zzeq;)Lcom/google/android/gms/internal/auth/zzeo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzeo;->zzi()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zza:Lcom/google/android/gms/internal/auth/zzeq;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth/zzeo;->zzj(Lcom/google/android/gms/internal/auth/zzeq;Lcom/google/android/gms/internal/auth/zzeq;)V

    return-object p0
.end method

.method public zzf()Lcom/google/android/gms/internal/auth/zzeq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zza:Lcom/google/android/gms/internal/auth/zzeq;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zza:Lcom/google/android/gms/internal/auth/zzeq;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfy;->zza()Lcom/google/android/gms/internal/auth/zzfy;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzfy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/auth/zzgb;->zze(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zza:Lcom/google/android/gms/internal/auth/zzeq;

    return-object v0
.end method

.method public bridge synthetic zzg()Lcom/google/android/gms/internal/auth/zzfq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzeo;->zzf()Lcom/google/android/gms/internal/auth/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/internal/auth/zzfq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zzc:Lcom/google/android/gms/internal/auth/zzeq;

    return-object v0
.end method

.method protected zzi()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zza:Lcom/google/android/gms/internal/auth/zzeq;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzeq;->zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeq;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzeo;->zza:Lcom/google/android/gms/internal/auth/zzeq;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/zzeo;->zzj(Lcom/google/android/gms/internal/auth/zzeq;Lcom/google/android/gms/internal/auth/zzeq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzeo;->zza:Lcom/google/android/gms/internal/auth/zzeq;

    return-void
.end method
