.class public Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/notches/NotchDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotchAffectView"
.end annotation


# static fields
.field public static final LAYOUT_CENTER:I = 0x1

.field public static final LAYOUT_FULL:I = 0x4

.field public static final LAYOUT_LEFT:I = 0x2

.field public static final LAYOUT_RIGHT:I = 0x3

.field public static final NOT_MIN_HEIGHT:I = -0x1


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Z

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ZZZI)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;-><init>(Landroid/view/View;ZZZII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZZZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->h:Z

    iput-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p3, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->b:Z

    iput-boolean p4, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->c:Z

    iput p5, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    iput-boolean p2, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->d:Z

    iput p6, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->f:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->g:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->h:Z

    return-void
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->f:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int v3, p1, v2

    if-ge v1, v3, :cond_1

    add-int/2addr p1, v2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;[Lcom/netease/ntunisdk/core/notches/NotchInfo;Ljava/util/HashMap;)V
    .locals 9

    iget-boolean v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->h:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->isAtTop()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->d:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-ne v1, v4, :cond_0

    aget-object v1, p1, v0

    goto :goto_0

    :cond_0
    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_9

    :cond_1
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move v6, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_4

    :cond_2
    aget-object v1, p1, v0

    :goto_0
    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    move v5, v1

    goto :goto_3

    :cond_3
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->isAtCenterVertical()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-ne v1, v4, :cond_4

    aget-object v1, p1, v0

    goto :goto_0

    :cond_4
    if-eq v1, v3, :cond_5

    if-ne v1, v2, :cond_9

    :cond_5
    aget-object v1, p1, v0

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-ne v1, v4, :cond_7

    aget-object v1, p1, v0

    goto :goto_0

    :cond_7
    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_9

    :cond_8
    aget-object v1, p1, v0

    :goto_1
    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    :goto_4
    aget-object v7, p1, v4

    const/4 v8, 0x3

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->d:Z

    if-eqz v7, :cond_11

    aget-object v7, p1, v4

    invoke-virtual {v7}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->isAtLeft()Z

    move-result v7

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-ne v7, v3, :cond_a

    aget-object v1, p1, v4

    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_a
    if-ne v7, v4, :cond_b

    aget-object v1, p1, v4

    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_5
    move v5, v1

    goto :goto_7

    :cond_b
    if-ne v7, v2, :cond_11

    aget-object v6, p1, v4

    iget v6, v6, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mNotchHeight:I

    goto :goto_7

    :cond_c
    aget-object v7, p1, v4

    invoke-virtual {v7}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->isAtCenterHorizontal()Z

    move-result v7

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-eq v7, v4, :cond_d

    if-ne v7, v2, :cond_11

    :cond_d
    aget-object v6, p1, v4

    iget v6, v6, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mNotchHeight:I

    aget-object v7, p1, v4

    :goto_6
    iget v7, v7, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mNotchHeight:I

    invoke-direct {p0, v7}, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a(I)V

    goto :goto_7

    :cond_e
    iget v7, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-ne v7, v8, :cond_f

    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v4

    iget-object v7, v7, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    goto :goto_7

    :cond_f
    if-ne v7, v4, :cond_10

    aget-object v1, p1, v4

    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    goto :goto_5

    :cond_10
    aget-object v6, p1, v4

    iget v6, v6, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mNotchHeight:I

    aget-object v7, p1, v4

    goto :goto_6

    :cond_11
    :goto_7
    aget-object v7, p1, v3

    if-eqz v7, :cond_18

    aget-object v7, p1, v3

    invoke-virtual {v7}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->isAtTop()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-boolean v7, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->d:Z

    if-eqz v7, :cond_18

    iget v7, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-ne v7, v4, :cond_12

    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget-object p1, p1, v3

    goto :goto_8

    :cond_12
    if-eq v7, v8, :cond_13

    if-ne v7, v2, :cond_18

    :cond_13
    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v6, v2, p1

    goto :goto_9

    :cond_14
    aget-object v7, p1, v3

    invoke-virtual {v7}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->isAtCenterVertical()Z

    move-result v7

    if-eqz v7, :cond_16

    iget v7, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-ne v7, v4, :cond_15

    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget-object p1, p1, v3

    goto :goto_8

    :cond_15
    if-ne v7, v2, :cond_18

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int v5, v2, p1

    goto :goto_9

    :cond_16
    iget v2, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->e:I

    if-ne v2, v4, :cond_17

    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget-object p1, p1, v3

    :goto_8
    iget-object p1, p1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    move v5, v1

    goto :goto_9

    :cond_17
    if-ne v2, v8, :cond_18

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int p1, v2, p1

    goto :goto_a

    :cond_18
    :goto_9
    const/4 p1, 0x0

    :goto_a
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v6, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->g:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "change[oldRect]:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "change[newRect]:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "changeSpace#left:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", top:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bottom:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",width:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->b:Z

    iget-object p0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    if-eqz p2, :cond_1a

    invoke-virtual {p0, v1, v6, v5, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, p2

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p2

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, p2

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v1, v6, v5, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_1b
    return-void
.end method
