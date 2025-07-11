.class Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;
.super Landroid/support/v4/hardware/display/DisplayManagerCompat;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/display/DisplayManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayManagerCompatApi14Impl"
.end annotation


# instance fields
.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat;-><init>()V

    .line 116
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;->mWindowManager:Landroid/view/WindowManager;

    .line 117
    return-void
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I

    .line 121
    iget-object v0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 122
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 123
    return-object v0

    .line 125
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 3

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/Display;

    iget-object v1, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 135
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display;

    :goto_0
    return-object v0
.end method
