.class Lorg/cocos2dx/lib/JsMessHandlerObject;
.super Ljava/lang/Object;
.source "Cocos2dxWebView.java"


# instance fields
.field private final mViewTag:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/cocos2dx/lib/JsMessHandlerObject;->mViewTag:I

    return-void
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 52
    iget v0, p0, Lorg/cocos2dx/lib/JsMessHandlerObject;->mViewTag:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->_onJsMessage(ILjava/lang/String;)V

    return-void
.end method
