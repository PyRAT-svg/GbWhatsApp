.class public Lcom/gbwhatsapq/coreui/MultiContactThumbnail;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field public A00:Landroid/graphics/RectF;

.field public A01:Landroid/graphics/Paint;

.field public A02:I

.field public A03:Landroid/graphics/Canvas;

.field public A04:I

.field public A05:F

.field public final A06:LX/1A7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A05:F

    invoke-static {}, LX/1A7;->A00()LX/1A7;

    move-result-object v0

    iput-object v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A06:LX/1A7;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, LX/11E;->MultiContactThumbnail:[I

    invoke-virtual {v1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v1, 0x1

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A05:F

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A05:F

    const/4 v1, 0x0

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A04:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A04:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A05:F

    float-to-int v0, v0

    shl-int/lit8 v3, v0, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A03:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, v3

    invoke-direct {v1, v4, v4, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A00:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A01:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A01:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method

.method private setNumImages(I)V
    .locals 6

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A02:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    add-int/lit8 v0, v3, -0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int v3, p1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iput p1, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A02:I

    return-void
.end method


# virtual methods
.method public A00(Ljava/util/List;LX/15u;LX/15p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LX/1FH;",
            ">;",
            "LX/15u;",
            "LX/15p;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    const-string v0, "Value %d out of bounds for numImages"

    invoke-static {v0}, LX/0CS;->A0S(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LX/1Ts;->A00(ZLjava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-gt v0, v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :cond_1
    invoke-direct {p0, v3}, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->setNumImages(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/1FH;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2, v1, v0, v4, p3}, LX/15u;->A06(LX/1FH;Landroid/widget/ImageView;ZLX/15p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v2, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A03:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A03:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A00:Landroid/graphics/RectF;

    iget v1, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A05:F

    iget-object v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 14

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A02:I

    const/4 v11, 0x1

    if-lt v0, v11, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v9, v0

    iget-object v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A06:LX/1A7;

    invoke-virtual {v0}, LX/1A7;->A0N()Z

    move-result v13

    sub-int/2addr v6, v7

    sub-int/2addr v9, v10

    shr-int/lit8 v12, v6, 0x1

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A04:I

    sub-int v1, v12, v0

    shr-int/lit8 v5, v9, 0x1

    sub-int v4, v5, v0

    add-int/2addr v12, v7

    add-int/2addr v12, v0

    add-int/2addr v5, v10

    add-int/2addr v5, v0

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A02:I

    if-eq v0, v11, :cond_0

    move v6, v1

    :cond_0
    const/4 v8, 0x3

    move v3, v4

    if-gt v0, v8, :cond_1

    move v3, v9

    :cond_1
    if-eqz v13, :cond_2

    move v2, v12

    if-gt v0, v11, :cond_3

    :cond_2
    move v2, v7

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, v2, v6

    add-int/2addr v3, v10

    invoke-virtual {v1, v2, v10, v0, v3}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A02:I

    if-eq v0, v11, :cond_7

    move v3, v12

    if-eqz v13, :cond_4

    move v3, v7

    :cond_4
    const/4 v2, 0x2

    if-le v0, v2, :cond_5

    move v9, v4

    :cond_5
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v1, v3, v6

    add-int/2addr v9, v10

    invoke-virtual {v0, v3, v10, v1, v9}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A02:I

    if-eq v0, v2, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/gbwhatsapq/coreui/MultiContactThumbnail;->A02:I

    if-eq v0, v8, :cond_7

    if-eqz v13, :cond_6

    move v7, v12

    :cond_6
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/2addr v6, v7

    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    return-void
.end method
