.class public final Lcom/google/android/gms/fitness/FitnessOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_READ:I = 0x0

.field public static final ACCESS_WRITE:I = 0x1


# instance fields
.field private final zza:Ljava/util/Set;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/fitness/FitnessOptions$Builder;Lcom/google/android/gms/fitness/zzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza(Lcom/google/android/gms/fitness/FitnessOptions$Builder;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/FitnessOptions;->zza:Ljava/util/Set;

    return-void
.end method

.method public static builder()Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;-><init>(Lcom/google/android/gms/fitness/zzg;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/fitness/FitnessOptions;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/fitness/FitnessOptions;

    iget-object v0, p0, Lcom/google/android/gms/fitness/FitnessOptions;->zza:Ljava/util/Set;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/fitness/FitnessOptions;->zza:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getExtensionType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getImpliedScopes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/fitness/FitnessOptions;->zza:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/fitness/FitnessOptions;->zza:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
