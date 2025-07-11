.class Lorg/cocos2dx/lib/WebDialog;
.super Landroid/app/Dialog;
.source "Cocos2dxWebViewHelper.java"


# instance fields
.field private activity:Landroid/app/NativeActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    check-cast p1, Landroid/app/NativeActivity;

    iput-object p1, p0, Lorg/cocos2dx/lib/WebDialog;->activity:Landroid/app/NativeActivity;

    return-void
.end method

.method private clearFocusNotAle()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private focusNotAle()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private passThrough(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/cocos2dx/lib/WebDialog;->activity:Landroid/app/NativeActivity;

    invoke-virtual {v0, p1}, Landroid/app/NativeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/WebDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public hideNavigationBar()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/WebDialog$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/WebDialog$1;-><init>(Lorg/cocos2dx/lib/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lorg/cocos2dx/lib/WebDialog;->focusNotAle()V

    .line 109
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 110
    invoke-virtual {p0}, Lorg/cocos2dx/lib/WebDialog;->hideNavigationBar()V

    .line 111
    invoke-direct {p0}, Lorg/cocos2dx/lib/WebDialog;->clearFocusNotAle()V

    return-void
.end method
