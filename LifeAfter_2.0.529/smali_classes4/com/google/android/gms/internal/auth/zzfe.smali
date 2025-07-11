.class abstract Lcom/google/android/gms/internal/auth/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzfe;

.field private static final zzb:Lcom/google/android/gms/internal/auth/zzfe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfc;-><init>(Lcom/google/android/gms/internal/auth/zzfb;)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzfe;->zza:Lcom/google/android/gms/internal/auth/zzfe;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzfd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfd;-><init>(Lcom/google/android/gms/internal/auth/zzfb;)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzfe;->zzb:Lcom/google/android/gms/internal/auth/zzfe;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/auth/zzfe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzfe;->zza:Lcom/google/android/gms/internal/auth/zzfe;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/auth/zzfe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzfe;->zzb:Lcom/google/android/gms/internal/auth/zzfe;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
