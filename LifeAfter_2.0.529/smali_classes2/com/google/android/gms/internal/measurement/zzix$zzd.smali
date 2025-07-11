.class public abstract Lcom/google/android/gms/internal/measurement/zzix$zzd;
.super Lcom/google/android/gms/internal/measurement/zzix;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzix$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/measurement/zziq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziq;->zzb()Lcom/google/android/gms/internal/measurement/zziq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/measurement/zziq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziq;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    return-object v0
.end method
