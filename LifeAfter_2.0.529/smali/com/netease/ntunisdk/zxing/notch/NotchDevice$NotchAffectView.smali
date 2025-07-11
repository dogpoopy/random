.class public Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;
.super Ljava/lang/Object;
.source "NotchDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/zxing/notch/NotchDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotchAffectView"
.end annotation


# static fields
.field public static final LAYOUT_CENTER:I = 0x1

.field public static final LAYOUT_LEFT:I = 0x2

.field public static final LAYOUT_RIGHT:I = 0x3

.field public static final NOT_MIN_HEIGHT:I = -0x1


# instance fields
.field affectView:Landroid/view/View;

.field inPaddingMode:Z

.field isLandscape:Z

.field isTopView:Z

.field layout:I

.field minHeight:I


# direct methods
.method public constructor <init>(Landroid/view/View;ZZZI)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    .line 119
    iput-boolean p3, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->inPaddingMode:Z

    .line 120
    iput-boolean p4, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isLandscape:Z

    .line 121
    iput p5, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->layout:I

    .line 122
    iput-boolean p2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isTopView:Z

    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->minHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZZZII)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    .line 128
    iput-boolean p3, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->inPaddingMode:Z

    .line 129
    iput-boolean p4, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isLandscape:Z

    .line 130
    iput p5, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->layout:I

    .line 131
    iput-boolean p2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isTopView:Z

    .line 132
    iput p6, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->minHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->justNotch([Lcom/netease/ntunisdk/zxing/notch/NotchInfo;)V

    return-void
.end method

.method private changeHeight(I)V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 218
    iget v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->minHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int v3, p1, v2

    if-ge v1, v3, :cond_0

    add-int/2addr p1, v2

    .line 219
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private changeSpace(IIII)V
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inPaddingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->inPaddingMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notch"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->inPaddingMode:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->setPadding(IIII)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->setMargin(IIII)V

    :goto_0
    return-void
.end method

.method private justNotch([Lcom/netease/ntunisdk/zxing/notch/NotchInfo;)V
    .locals 9

    const/4 v0, 0x0

    .line 141
    aget-object v1, p1, v0

    const-string v2, "notch"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "left:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->isAtTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-boolean v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isTopView:Z

    if-eqz v1, :cond_1

    const-string v1, "left#changePadding, notch at left"

    .line 146
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 148
    iget v4, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->layout:I

    if-ne v4, v3, :cond_2

    .line 149
    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 154
    :cond_0
    iget-boolean v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isTopView:Z

    if-nez v1, :cond_1

    .line 155
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 156
    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    const/4 v4, 0x0

    .line 161
    :goto_0
    aget-object v5, p1, v3

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isTopView:Z

    if-eqz v5, :cond_5

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p1, v3

    iget-object v6, v6, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    aget-object v5, p1, v3

    invoke-virtual {v5}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->isAtCenterHorizontal()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "top#changeHeight"

    .line 165
    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    aget-object v5, p1, v3

    iget v5, v5, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mNotchHeight:I

    .line 167
    aget-object v6, p1, v3

    iget v6, v6, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mNotchHeight:I

    invoke-direct {p0, v6}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->changeHeight(I)V

    goto :goto_2

    :cond_3
    const-string v5, "top#changePadding"

    .line 170
    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    aget-object v5, p1, v3

    invoke-virtual {v5}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->isAtLeft()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v1, "top#changePadding, notch at left"

    .line 172
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 174
    iget v5, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->layout:I

    if-ne v5, v3, :cond_5

    .line 175
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    const-string v4, "top#changePadding, notch at right"

    .line 178
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 180
    iget v5, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->layout:I

    if-ne v5, v3, :cond_5

    move v1, v4

    :cond_5
    :goto_1
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x2

    .line 187
    aget-object v7, p1, v6

    if-eqz v7, :cond_7

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "right:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p1, v6

    iget-object v8, v8, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    aget-object v7, p1, v6

    invoke-virtual {v7}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->isAtTop()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 191
    iget-boolean v7, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isTopView:Z

    if-eqz v7, :cond_7

    const-string v4, "right#changePadding, notch at right"

    .line 192
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    aget-object v2, p1, v6

    iget-object v2, v2, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    aget-object v4, p1, v6

    iget-object v4, v4, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    .line 194
    iget v4, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->layout:I

    if-ne v4, v3, :cond_8

    move v1, v2

    goto :goto_3

    .line 201
    :cond_6
    iget-boolean v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->isTopView:Z

    if-nez v2, :cond_7

    .line 202
    aget-object v1, p1, v6

    iget-object v1, v1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget-object v2, p1, v6

    iget-object v2, v2, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v4

    :cond_8
    :goto_3
    const/4 v3, 0x3

    .line 209
    aget-object p1, p1, v3

    .line 212
    invoke-direct {p0, v1, v2, v5, v0}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->changeSpace(IIII)V

    return-void
.end method

.method private setMargin(IIII)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 245
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private setPadding(IIII)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-lt v0, p4, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-lt v0, p3, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr p4, v1

    .line 238
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
