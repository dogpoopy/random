.class public abstract Lcom/google/android/gms/internal/auth/zzcz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field public static final synthetic zzd:I

.field private static volatile zze:Lcom/google/android/gms/internal/auth/zzcy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzf:Z

.field private static final zzg:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/auth/zzdb;

.field private static final zzi:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final zzb:Lcom/google/android/gms/internal/auth/zzcx;

.field final zzc:Ljava/lang/String;

.field private final zzj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile zzk:I

.field private volatile zzl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcz;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcz;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzdb;

    sget-object v1, Lcom/google/android/gms/internal/auth/zzcr;->zza:Lcom/google/android/gms/internal/auth/zzcr;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/auth/zzdb;-><init>(Lcom/google/android/gms/internal/auth/zzcr;[B)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcz;->zzh:Lcom/google/android/gms/internal/auth/zzdb;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcz;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzcx;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/auth/zzct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzk:I

    iget-object p4, p1, Lcom/google/android/gms/internal/auth/zzcx;->zzb:Landroid/net/Uri;

    if-eqz p4, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzj:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzm:Z

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static zzd()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcz;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zze(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcz;->zze:Lcom/google/android/gms/internal/auth/zzcy;

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcz;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/auth/zzcz;->zze:Lcom/google/android/gms/internal/auth/zzcy;

    if-nez v1, :cond_3

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/auth/zzcz;->zze:Lcom/google/android/gms/internal/auth/zzcy;

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzcy;->zza()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzcg;->zzd()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzda;->zzc()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzcn;->zze()V

    new-instance v1, Lcom/google/android/gms/internal/auth/zzcs;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth/zzcs;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzdk;->zza(Lcom/google/android/gms/internal/auth/zzdg;)Lcom/google/android/gms/internal/auth/zzdg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/auth/zzcd;

    .line 7
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/auth/zzcd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auth/zzdg;)V

    sput-object v2, Lcom/google/android/gms/internal/auth/zzcz;->zze:Lcom/google/android/gms/internal/auth/zzcy;

    sget-object p0, Lcom/google/android/gms/internal/auth/zzcz;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 9
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 10
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    return-void
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    const-string v1, "flagName must not be null"

    .line 30
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 0
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcz;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzk:I

    if-ge v1, v0, :cond_e

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzk:I

    if-ge v1, v0, :cond_d

    sget-object v1, Lcom/google/android/gms/internal/auth/zzcz;->zze:Lcom/google/android/gms/internal/auth/zzcy;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    .line 2
    iget-boolean v3, v2, Lcom/google/android/gms/internal/auth/zzcx;->zzf:Z

    .line 3
    iget-boolean v2, v2, Lcom/google/android/gms/internal/auth/zzcx;->zzg:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzcy;->zza()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzcn;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzcn;

    move-result-object v2

    const-string v3, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/auth/zzcn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/auth/zzcb;->zzc:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    .line 16
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PhenotypeFlag"

    const-string v4, "Bypass reading Phenotype values for flag: "

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzcz;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 20
    :cond_1
    new-instance v5, Ljava/lang/String;

    .line 17
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/auth/zzcx;->zzb:Landroid/net/Uri;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzcy;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    .line 8
    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzcx;->zzb:Landroid/net/Uri;

    .line 9
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/auth/zzcp;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    .line 10
    iget-boolean v2, v2, Lcom/google/android/gms/internal/auth/zzcx;->zzh:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzcy;->zza()Landroid/content/Context;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzcx;->zzb:Landroid/net/Uri;

    .line 12
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/auth/zzcg;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/auth/zzcg;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzcy;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    .line 13
    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzcx;->zza:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/auth/zzda;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/auth/zzda;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzcz;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/auth/zzck;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzcz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_6

    goto :goto_5

    .line 27
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    .line 18
    iget-boolean v4, v2, Lcom/google/android/gms/internal/auth/zzcx;->zze:Z

    if-nez v4, :cond_8

    iget-object v2, v2, Lcom/google/android/gms/internal/auth/zzcx;->zzi:Lcom/google/android/gms/internal/auth/zzdd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzcy;->zza()Landroid/content/Context;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzcn;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzcn;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    .line 20
    iget-boolean v5, v4, Lcom/google/android/gms/internal/auth/zzcx;->zze:Z

    if-eqz v5, :cond_7

    move-object v4, v3

    goto :goto_3

    :cond_7
    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzcx;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    .line 21
    :goto_3
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/auth/zzcn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 22
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzcz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v2, v3

    :goto_4
    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzj:Ljava/lang/Object;

    .line 17
    :cond_9
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzcy;->zzb()Lcom/google/android/gms/internal/auth/zzdg;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzdg;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzde;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzde;->zzb()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzde;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzco;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    iget-object v4, v2, Lcom/google/android/gms/internal/auth/zzcx;->zzb:Landroid/net/Uri;

    iget-object v5, v2, Lcom/google/android/gms/internal/auth/zzcx;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/auth/zzcx;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/google/android/gms/internal/auth/zzco;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzj:Ljava/lang/Object;

    goto :goto_6

    .line 27
    :cond_a
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/zzcz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    :cond_b
    :goto_6
    iput-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzl:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzk:I

    goto :goto_7

    .line 30
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_d
    :goto_7
    monitor-exit p0

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_e
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzl:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Lcom/google/android/gms/internal/auth/zzcx;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/auth/zzcx;->zzd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    return-object v0
.end method
