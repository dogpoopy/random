.class public Landroidx/camera/extensions/internal/compat/quirk/CrashWhenOnDisableTooSoon;
.super Ljava/lang/Object;
.source "CrashWhenOnDisableTooSoon.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load()Z
    .locals 2

    .line 35
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
