.class Lorg/cocos2dx/lib/WebDialog$1;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/WebDialog;->hideNavigationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/WebDialog;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/WebDialog;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/cocos2dx/lib/WebDialog$1;->this$0:Lorg/cocos2dx/lib/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 96
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1706

    goto :goto_0

    :cond_0
    const/16 p1, 0x707

    .line 101
    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/WebDialog$1;->this$0:Lorg/cocos2dx/lib/WebDialog;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
