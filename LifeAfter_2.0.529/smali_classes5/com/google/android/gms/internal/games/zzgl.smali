.class final Lcom/google/android/gms/internal/games/zzgl;
.super Lcom/google/android/gms/internal/games/zzgk;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final zznm:Lcom/google/android/gms/internal/games/zzgj;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzgk;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games/zzgj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzgj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/games/zzgl;->zznm:Lcom/google/android/gms/internal/games/zzgj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-eq p2, p1, :cond_0

    const-string v0, "The suppressed exception cannot be null."

    .line 6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzgl;->zznm:Lcom/google/android/gms/internal/games/zzgj;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/games/zzgj;->zza(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
