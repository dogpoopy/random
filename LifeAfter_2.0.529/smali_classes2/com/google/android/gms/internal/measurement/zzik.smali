.class public Lcom/google/android/gms/internal/measurement/zzik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzik$zza;
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzik;

.field private static volatile zzb:Z = false

.field private static zzc:Z = true

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzik;


# instance fields
.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzik$zza;",
            "Lcom/google/android/gms/internal/measurement/zzix$zzf<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzik;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzik;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzik;->zze:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzik;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzik;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzik;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzik;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v1, :cond_0

    return-object v1

    .line 4
    :cond_0
    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzik;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v1, :cond_1

    .line 7
    monitor-exit v0

    return-object v1

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zziv;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v1

    .line 11
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzik;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    .line 12
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzkj;I)Lcom/google/android/gms/internal/measurement/zzix$zzf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzkj;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzix$zzf<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzik;->zze:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzik$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzik$zza;-><init>(Ljava/lang/Object;I)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix$zzf;

    return-object p1
.end method
