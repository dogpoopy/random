.class public interface abstract Lcom/google/android/gms/games/internal/experience/ExperienceEvent;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/internal/experience/ExperienceEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract zzbq()Ljava/lang/String;
.end method

.method public abstract zzbr()Ljava/lang/String;
.end method

.method public abstract zzbs()Ljava/lang/String;
.end method

.method public abstract zzbt()J
.end method

.method public abstract zzbu()J
.end method

.method public abstract zzbv()J
.end method

.method public abstract zzbw()I
.end method
