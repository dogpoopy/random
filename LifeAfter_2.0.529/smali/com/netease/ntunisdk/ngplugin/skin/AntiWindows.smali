.class public Lcom/netease/ntunisdk/ngplugin/skin/AntiWindows;
.super Landroid/view/Window;
.source "AntiWindows.java"


# instance fields
.field private baseWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public closeAllPanels()V
    .locals 0

    return-void
.end method

.method public closePanel(I)V
    .locals 0

    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecorView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidatePanelMenu(I)V
    .locals 0

    return-void
.end method

.method public isFloating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onActive()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public openPanel(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public peekDecorView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setChildInt(II)V
    .locals 0

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public setDecorCaptionShade(I)V
    .locals 0

    return-void
.end method

.method public setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 0

    return-void
.end method

.method public setFeatureDrawableResource(II)V
    .locals 0

    return-void
.end method

.method public setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public setFeatureInt(II)V
    .locals 0

    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 0

    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0

    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiWindows;->baseWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 0

    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiWindows;->baseWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    return-void
.end method

.method public togglePanel(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method
