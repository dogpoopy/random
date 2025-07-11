.class public final synthetic Lcom/google/android/gms/internal/measurement/zzhc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/measurement/zzhc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zza:Lcom/google/android/gms/internal/measurement/zzhc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzha;->zza()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method
