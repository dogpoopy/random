.class public Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;
.super Landroid/view/View;
.source "ProtocolView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;
    }
.end annotation


# static fields
.field private static final MIN_MOVE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "V"


# instance fields
.field private mOnPageListener:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;

.field private mPLayout:Landroid/text/StaticLayout;

.field private mPLayoutHeight:I

.field private mTouchX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->init()V

    return-void
.end method

.method private findTouchCharAt(II)I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Touch : [%d,%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayoutHeight:I

    const/4 v2, -0x1

    if-lt p2, v0, :cond_0

    return v2

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result p2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayout:Landroid/text/StaticLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p2, p1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "off : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 134
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click   :  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    return v2
.end method

.method private init()V
    .locals 0

    .line 51
    invoke-virtual {p0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public addOnPageListener(Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mOnPageListener:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;

    return-void
.end method

.method public getLayout()Landroid/text/StaticLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mTouchX:F

    sub-float/2addr p1, v1

    .line 92
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mOnPageListener:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;

    if-eqz p1, :cond_4

    .line 95
    invoke-interface {p1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;->prePage()V

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mOnPageListener:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;

    if-eqz p1, :cond_4

    .line 100
    invoke-interface {p1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;->nextPage()V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->findTouchCharAt(II)I

    move-result p1

    if-ltz p1, :cond_4

    .line 108
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mOnPageListener:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;

    if-eqz p2, :cond_4

    .line 109
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;->openLink(I)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mTouchX:F

    :cond_4
    :goto_0
    return v0
.end method

.method public setLayout(Landroid/text/StaticLayout;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayout:Landroid/text/StaticLayout;

    .line 80
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->mPLayoutHeight:I

    .line 81
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->postInvalidate()V

    return-void
.end method
