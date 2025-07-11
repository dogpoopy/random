.class public Lcom/netease/mpay/oversea/t6;
.super Lcom/netease/mpay/oversea/s6;
.source "NotchImplAndroidP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/t6$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/s6;-><init>()V

    return-void
.end method

.method private a(Landroid/view/Window;)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s6;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/t6$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/t6$a;-><init>(Lcom/netease/mpay/oversea/t6;Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t6$a;->run()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/t6;->a(Landroid/view/Window;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/t6$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/t6$a;-><init>(Lcom/netease/mpay/oversea/t6;Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b(Landroid/content/Context;Landroid/view/Window;)I
    .locals 13

    .line 1
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/t6;->a(Landroid/view/Window;)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s6;->c(Landroid/content/Context;)[I

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_13

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    return v0

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotchImplAndroidP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 10
    :try_start_0
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 11
    new-instance v7, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v7}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 12
    aget v8, p1, v0

    aget v9, p1, v6

    invoke-virtual {v7, v8, v9}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 13
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v9}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 15
    iget-object v9, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v7, v9, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 17
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, v7, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v8, 0x0

    .line 20
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 21
    new-instance v7, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v7}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 22
    aget v9, p1, v0

    aget v10, p1, v6

    invoke-virtual {v7, v9, v10}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 23
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v9

    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 24
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v8, v5, v9}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 25
    iget-object v9, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v7, v9, v6

    goto :goto_2

    .line 27
    :cond_3
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, v7, v6

    .line 30
    :goto_2
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 31
    new-instance v7, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v7}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 32
    aget v9, p1, v0

    aget v10, p1, v6

    invoke-virtual {v7, v9, v10}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 33
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v10

    iget v8, v10, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v8

    .line 34
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v8, v3, v9}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 35
    iget-object v9, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v7, v9, v5

    goto :goto_3

    .line 37
    :cond_4
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, v7, v5

    .line 39
    :goto_3
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 40
    new-instance v1, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 41
    aget v7, p1, v0

    aget v9, p1, v6

    invoke-virtual {v1, v7, v9}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 42
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v9

    iget v8, v9, Landroid/graphics/Rect;->top:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sub-int/2addr v7, v8

    .line 43
    :try_start_4
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v1, v7, v2, v8}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 44
    iget-object v8, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, v8, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    move v8, v7

    goto :goto_5

    .line 46
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, v7, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v7, v8

    :goto_4
    return v7

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v1

    const/4 v8, 0x0

    .line 50
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :try_start_6
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v3, :cond_d

    .line 57
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 58
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 59
    new-instance v8, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v8}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 60
    aget v9, p1, v0

    aget v10, p1, v6

    invoke-virtual {v8, v9, v10}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 61
    iget v9, v7, Landroid/graphics/Rect;->right:I

    .line 64
    invoke-virtual {v8, v9, v6, v7}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 65
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v8, v7, v0

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 68
    :goto_6
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 69
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 70
    new-instance v10, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v10}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 71
    aget v11, p1, v0

    aget v12, p1, v6

    invoke-virtual {v10, v11, v12}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 72
    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    if-nez v9, :cond_7

    move v9, v11

    .line 75
    :cond_7
    invoke-virtual {v10, v11, v5, v8}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 76
    iget-object v8, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v10, v8, v6

    add-int/lit8 v7, v7, 0x1

    .line 79
    :cond_8
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 80
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 81
    new-instance v10, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v10}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 82
    aget v11, p1, v0

    aget v12, p1, v6

    invoke-virtual {v10, v11, v12}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 83
    iget v11, v8, Landroid/graphics/Rect;->right:I

    iget v12, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    if-nez v9, :cond_9

    move v9, v11

    .line 86
    :cond_9
    invoke-virtual {v10, v11, v3, v8}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 87
    iget-object v3, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v10, v3, v5

    add-int/lit8 v7, v7, 0x1

    .line 90
    :cond_a
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p2

    if-lez p2, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v7, p2, :cond_c

    .line 91
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 92
    new-instance v1, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 93
    aget v3, p1, v0

    aget p1, p1, v6

    invoke-virtual {v1, v3, p1}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 94
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    if-nez v9, :cond_b

    move v9, p1

    .line 97
    :cond_b
    invoke-virtual {v1, p1, v2, p2}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 98
    iget-object p1, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, p1, v4

    :cond_c
    return v9

    .line 104
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v1, :cond_11

    if-eq v1, v6, :cond_10

    if-eq v1, v5, :cond_f

    if-eq v1, v4, :cond_e

    goto :goto_9

    .line 128
    :cond_e
    new-instance v8, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v8}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 129
    aget v9, p1, v0

    aget v10, p1, v6

    invoke-virtual {v8, v9, v10}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 130
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    .line 131
    invoke-virtual {v8, v9, v2, v7}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 132
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v8, v7, v4

    goto :goto_8

    .line 133
    :cond_f
    new-instance v8, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v8}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 134
    aget v9, p1, v0

    aget v10, p1, v6

    invoke-virtual {v8, v9, v10}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 135
    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    .line 136
    invoke-virtual {v8, v9, v3, v7}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 137
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v8, v7, v5

    goto :goto_8

    .line 138
    :cond_10
    new-instance v8, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v8}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 139
    aget v9, p1, v0

    aget v10, p1, v6

    invoke-virtual {v8, v9, v10}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 140
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 141
    invoke-virtual {v8, v9, v5, v7}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 142
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v8, v7, v6

    goto :goto_8

    .line 143
    :cond_11
    new-instance v8, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v8}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 144
    aget v9, p1, v0

    aget v10, p1, v6

    invoke-virtual {v8, v9, v10}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 145
    iget v9, v7, Landroid/graphics/Rect;->right:I

    .line 146
    invoke-virtual {v8, v9, v6, v7}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 147
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v8, v7, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_8
    move v8, v9

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v8

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    return v0
.end method
