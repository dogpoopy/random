.class final Lcom/google/android/gms/internal/play_billing/zzes;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzes;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzew;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzes;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzes;->zza:Lcom/google/android/gms/internal/play_billing/zzes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzes;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzec;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzec;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzes;->zzb:Lcom/google/android/gms/internal/play_billing/zzew;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzes;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzes;->zza:Lcom/google/android/gms/internal/play_billing/zzes;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 2

    const-string v0, "messageType"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdl;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzes;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzev;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzes;->zzb:Lcom/google/android/gms/internal/play_billing/zzew;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzew;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdl;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzes;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzev;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
