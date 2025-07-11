.class public final synthetic Lcom/google/android/gms/measurement/internal/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/measurement/internal/zzip;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzip;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzip;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzip;->zza:Lcom/google/android/gms/measurement/internal/zzip;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzmh;

    .line 2
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
