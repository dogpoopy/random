.class public final Lcom/google/android/gms/internal/measurement/zzpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/android/gms/internal/measurement/zzqb;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzpy;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/gms/internal/measurement/zzqb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpy;->zza:Lcom/google/android/gms/internal/measurement/zzpy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzqa;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpy;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()Z
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpy;->zza:Lcom/google/android/gms/internal/measurement/zzpy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzqb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqb;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzb()Z
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpy;->zza:Lcom/google/android/gms/internal/measurement/zzpy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzqb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqb;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpy;->zza:Lcom/google/android/gms/internal/measurement/zzpy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzqb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqb;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpy;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzqb;

    return-object v0
.end method
